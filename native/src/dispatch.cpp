#include <cstdint>
#include <dlfcn.h>
#include <mutex>
#include <string>
#include <unordered_map>
#include <utility>

#ifndef AMD_STRIX_HALO_HAS_HSACO
#define AMD_STRIX_HALO_HAS_HSACO 0
#endif

#ifndef AMD_STRIX_HALO_DYNAMIC_HIP_RUNTIME
#define AMD_STRIX_HALO_DYNAMIC_HIP_RUNTIME 0
#endif

namespace {

thread_local std::string last_error;

int fail(std::string message) {
  last_error = std::move(message);
  return 1;
}

#if AMD_STRIX_HALO_DYNAMIC_HIP_RUNTIME
using hipError_t = int;
using hipModule_t = void *;
using hipFunction_t = void *;
using hipStream_t = void *;

constexpr hipError_t hipSuccess = 0;

using hipGetErrorString_t = const char *(*)(hipError_t);
using hipGetLastError_t = hipError_t (*)();
using hipModuleLoad_t = hipError_t (*)(hipModule_t *, const char *);
using hipModuleGetFunction_t = hipError_t (*)(hipFunction_t *, hipModule_t, const char *);
using hipModuleUnload_t = hipError_t (*)(hipModule_t);
using hipSetDevice_t = hipError_t (*)(int);
using hipModuleLaunchKernel_t = hipError_t (*)(hipFunction_t, unsigned int, unsigned int,
                                               unsigned int, unsigned int, unsigned int,
                                               unsigned int, unsigned int, hipStream_t,
                                               void **, void **);

struct HipRuntime {
  void *handle = nullptr;
  hipGetErrorString_t hipGetErrorString = nullptr;
  hipGetLastError_t hipGetLastError = nullptr;
  hipModuleLoad_t hipModuleLoad = nullptr;
  hipModuleGetFunction_t hipModuleGetFunction = nullptr;
  hipModuleUnload_t hipModuleUnload = nullptr;
  hipSetDevice_t hipSetDevice = nullptr;
  hipModuleLaunchKernel_t hipModuleLaunchKernel = nullptr;

  bool available() const {
    return handle != nullptr && hipGetErrorString != nullptr && hipModuleLoad != nullptr &&
           hipModuleGetFunction != nullptr && hipModuleUnload != nullptr && hipSetDevice != nullptr &&
           hipModuleLaunchKernel != nullptr;
  }
};

struct CachedKernel {
  hipModule_t module = nullptr;
  hipFunction_t function = nullptr;
};

std::mutex hip_runtime_mutex;
HipRuntime hip_runtime;
bool hip_runtime_attempted = false;

std::mutex kernel_cache_mutex;
std::unordered_map<std::string, CachedKernel> kernel_cache;

template <typename Func>
bool load_hip_symbol(HipRuntime *runtime, Func *target, const char *name) {
  void *symbol = dlsym(runtime->handle, name);
  if (symbol == nullptr) {
    return false;
  }
  *target = reinterpret_cast<Func>(symbol);
  return true;
}

bool load_hip_runtime(bool report_error) {
  std::lock_guard<std::mutex> lock(hip_runtime_mutex);
  if (hip_runtime.available()) {
    return true;
  }
  if (hip_runtime_attempted) {
    if (report_error && last_error.empty()) {
      fail("ROCm HIP runtime library was not found");
    }
    return false;
  }
  hip_runtime_attempted = true;

  const char *library_names[] = {"libamdhip64.so.7", "libamdhip64.so.6", "libamdhip64.so"};
  std::string dlopen_error;
  for (const char *library_name : library_names) {
    void *handle = dlopen(library_name, RTLD_LAZY | RTLD_LOCAL);
    if (handle != nullptr) {
      hip_runtime.handle = handle;
      break;
    }
    const char *error = dlerror();
    if (error != nullptr) {
      dlopen_error = error;
    }
  }
  if (hip_runtime.handle == nullptr) {
    if (report_error) {
      std::string message = "ROCm HIP runtime library was not found";
      if (!dlopen_error.empty()) {
        message += ": " + dlopen_error;
      }
      fail(message);
    }
    return false;
  }

  bool ok = true;
  ok &= load_hip_symbol(&hip_runtime, &hip_runtime.hipGetErrorString, "hipGetErrorString");
  // Optional: used to clear HIP's sticky thread-local error after a handled
  // failure so it does not leak into later HIP consumers (e.g. PyTorch).
  load_hip_symbol(&hip_runtime, &hip_runtime.hipGetLastError, "hipGetLastError");
  ok &= load_hip_symbol(&hip_runtime, &hip_runtime.hipModuleLoad, "hipModuleLoad");
  ok &= load_hip_symbol(&hip_runtime, &hip_runtime.hipModuleGetFunction, "hipModuleGetFunction");
  ok &= load_hip_symbol(&hip_runtime, &hip_runtime.hipModuleUnload, "hipModuleUnload");
  ok &= load_hip_symbol(&hip_runtime, &hip_runtime.hipSetDevice, "hipSetDevice");
  ok &= load_hip_symbol(&hip_runtime, &hip_runtime.hipModuleLaunchKernel, "hipModuleLaunchKernel");
  if (!ok) {
    dlclose(hip_runtime.handle);
    hip_runtime = HipRuntime{};
    if (report_error) {
      fail("ROCm HIP runtime library is missing required module-launch symbols");
    }
    return false;
  }
  return true;
}

int fail_hip(HipRuntime *runtime, const char *action, hipError_t error) {
  const char *error_string = runtime->hipGetErrorString != nullptr ? runtime->hipGetErrorString(error) : nullptr;
  std::string message = std::string(action) + " failed: " + (error_string != nullptr ? error_string : "unknown HIP error");
  // A failed HIP call sets the runtime's sticky thread-local last error. We have
  // captured the failure into our own last_error, so reset HIP's flag to avoid
  // leaking it into the next HIP consumer on this thread (e.g. a later PyTorch
  // launch that would otherwise surface this stale error).
  if (runtime->hipGetLastError != nullptr) {
    (void)runtime->hipGetLastError();
  }
  return fail(std::move(message));
}

int load_kernel_function(HipRuntime *runtime, const char *hsaco_path, const char *symbol,
                         hipFunction_t *function) {
  const std::string cache_key = std::string(hsaco_path) + "\n" + symbol;
  std::lock_guard<std::mutex> lock(kernel_cache_mutex);
  auto existing = kernel_cache.find(cache_key);
  if (existing != kernel_cache.end()) {
    *function = existing->second.function;
    return 0;
  }

  hipModule_t module = nullptr;
  hipError_t error = runtime->hipModuleLoad(&module, hsaco_path);
  if (error != hipSuccess) {
    return fail_hip(runtime, "hipModuleLoad", error);
  }

  hipFunction_t loaded_function = nullptr;
  error = runtime->hipModuleGetFunction(&loaded_function, module, symbol);
  if (error != hipSuccess) {
    (void)runtime->hipModuleUnload(module);
    return fail_hip(runtime, "hipModuleGetFunction", error);
  }

  kernel_cache.emplace(cache_key, CachedKernel{module, loaded_function});
  *function = loaded_function;
  return 0;
}
#endif

} // namespace

extern "C" int amd_strix_halo_kernels_dispatch_version() { return 1; }

extern "C" int amd_strix_halo_kernels_has_compiled_code_objects() {
  return AMD_STRIX_HALO_HAS_HSACO;
}

extern "C" int amd_strix_halo_kernels_has_hip_runtime() {
  return load_hip_runtime(false) ? 1 : 0;
}

extern "C" int amd_strix_halo_kernels_has_linked_kernels() {
  return AMD_STRIX_HALO_HAS_HSACO && load_hip_runtime(false);
}

extern "C" const char *amd_strix_halo_kernels_last_error() {
  return last_error.c_str();
}

extern "C" int amd_strix_halo_kernels_launch_hsaco(
    const char *hsaco_path, const char *symbol, int device_index, uint32_t grid_x, uint32_t grid_y,
    uint32_t grid_z, uint32_t block_x, uint32_t block_y, uint32_t block_z,
    uint32_t shared_memory_bytes, uintptr_t stream_handle, void *a, void *b, void *a_scale,
    void *b_scale, void *c, void *gate, int32_t m, int32_t n, int32_t k, void *reserved0,
    void *reserved1) {
  last_error.clear();
  if (hsaco_path == nullptr || symbol == nullptr) {
    return fail("hsaco_path and symbol must be non-null");
  }
  if (grid_x == 0 || grid_y == 0 || grid_z == 0 || block_x == 0 || block_y == 0 || block_z == 0) {
    return fail("grid and block dimensions must be non-zero");
  }
  if (a == nullptr || b == nullptr || a_scale == nullptr || b_scale == nullptr || c == nullptr) {
    return fail("a, b, a_scale, b_scale, and c pointers must be non-null");
  }

  if (!load_hip_runtime(true)) {
    return 1;
  }
  HipRuntime *runtime = &hip_runtime;

  hipError_t error = runtime->hipSetDevice(device_index);
  if (error != hipSuccess) {
    return fail_hip(runtime, "hipSetDevice", error);
  }

  hipFunction_t function = nullptr;
  if (int rc = load_kernel_function(runtime, hsaco_path, symbol, &function); rc != 0) {
    return rc;
  }

  void *params[] = {&a, &b, &a_scale, &b_scale, &c, &gate, &m, &n, &k, &reserved0, &reserved1};
  auto stream = reinterpret_cast<hipStream_t>(stream_handle);
  error = runtime->hipModuleLaunchKernel(function, grid_x, grid_y, grid_z, block_x, block_y, block_z,
                                         shared_memory_bytes, stream, params, nullptr);
  if (error != hipSuccess) {
    return fail_hip(runtime, "hipModuleLaunchKernel", error);
  }
  return 0;
}
