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
using hipDeviceptr_t = uintptr_t;
using hipPointer_attribute = int;

constexpr hipError_t hipSuccess = 0;
constexpr hipPointer_attribute HIP_POINTER_ATTRIBUTE_DEVICE_POINTER = 3;

using hipGetErrorString_t = const char *(*)(hipError_t);
using hipGetLastError_t = hipError_t (*)();
using hipModuleLoad_t = hipError_t (*)(hipModule_t *, const char *);
using hipModuleGetFunction_t = hipError_t (*)(hipFunction_t *, hipModule_t, const char *);
using hipModuleUnload_t = hipError_t (*)(hipModule_t);
using hipSetDevice_t = hipError_t (*)(int);
using hipPointerGetAttribute_t = hipError_t (*)(void *, hipPointer_attribute, hipDeviceptr_t);
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
  hipPointerGetAttribute_t hipPointerGetAttribute = nullptr;
  hipModuleLaunchKernel_t hipModuleLaunchKernel = nullptr;

  bool available() const {
    return handle != nullptr && hipGetErrorString != nullptr && hipModuleLoad != nullptr &&
           hipModuleGetFunction != nullptr && hipModuleUnload != nullptr && hipSetDevice != nullptr &&
           hipPointerGetAttribute != nullptr && hipModuleLaunchKernel != nullptr;
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
  ok &= load_hip_symbol(&hip_runtime, &hip_runtime.hipPointerGetAttribute, "hipPointerGetAttribute");
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

int canonicalize_device_pointer(HipRuntime *runtime, void **ptr, const char *name) {
  if (*ptr == nullptr) {
    return 0;
  }
  hipDeviceptr_t device_ptr = reinterpret_cast<hipDeviceptr_t>(*ptr);
  hipError_t error =
      runtime->hipPointerGetAttribute(&device_ptr, HIP_POINTER_ATTRIBUTE_DEVICE_POINTER, device_ptr);
  if (error != hipSuccess) {
    std::string action = std::string("hipPointerGetAttribute(") + name + ")";
    return fail_hip(runtime, action.c_str(), error);
  }
  *ptr = reinterpret_cast<void *>(device_ptr);
  return 0;
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

  if (int rc = canonicalize_device_pointer(runtime, &a, "a"); rc != 0) {
    return rc;
  }
  if (int rc = canonicalize_device_pointer(runtime, &b, "b"); rc != 0) {
    return rc;
  }
  if (int rc = canonicalize_device_pointer(runtime, &a_scale, "a_scale"); rc != 0) {
    return rc;
  }
  if (int rc = canonicalize_device_pointer(runtime, &b_scale, "b_scale"); rc != 0) {
    return rc;
  }
  if (int rc = canonicalize_device_pointer(runtime, &c, "c"); rc != 0) {
    return rc;
  }
  if (int rc = canonicalize_device_pointer(runtime, &gate, "gate"); rc != 0) {
    return rc;
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


extern "C" int amd_strix_halo_kernels_launch_ragged_fwd_hsaco(
    const char *hsaco_path, const char *symbol, int device_index, uint32_t grid_x, uint32_t grid_y,
    uint32_t grid_z, uint32_t block_x, uint32_t block_y, uint32_t block_z,
    uint32_t shared_memory_bytes, uintptr_t stream_handle, void *lhs, void *rhs, void *lhs_scale,
    void *rhs_scale, void *task_group_ids, void *task_block_starts, void *task_actual_starts,
    void *task_actual_ends, void *out, int32_t m, int32_t n, int32_t k_packed,
    int32_t scale_cols, int32_t num_tasks, int32_t has_scale_cols_arg) {
  last_error.clear();
  if (hsaco_path == nullptr || symbol == nullptr) {
    return fail("hsaco_path and symbol must be non-null");
  }
  if (grid_x == 0 || grid_y == 0 || grid_z == 0 || block_x == 0 || block_y == 0 || block_z == 0) {
    return fail("grid and block dimensions must be non-zero");
  }
  if (lhs == nullptr || rhs == nullptr || lhs_scale == nullptr || rhs_scale == nullptr ||
      task_group_ids == nullptr || task_block_starts == nullptr || task_actual_starts == nullptr ||
      task_actual_ends == nullptr || out == nullptr) {
    return fail("ragged forward kernel pointers must be non-null");
  }

  if (!load_hip_runtime(true)) {
    return 1;
  }
  HipRuntime *runtime = &hip_runtime;
  hipError_t error = runtime->hipSetDevice(device_index);
  if (error != hipSuccess) {
    return fail_hip(runtime, "hipSetDevice", error);
  }

  if (int rc = canonicalize_device_pointer(runtime, &lhs, "lhs"); rc != 0) {
    return rc;
  }
  if (int rc = canonicalize_device_pointer(runtime, &rhs, "rhs"); rc != 0) {
    return rc;
  }
  if (int rc = canonicalize_device_pointer(runtime, &lhs_scale, "lhs_scale"); rc != 0) {
    return rc;
  }
  if (int rc = canonicalize_device_pointer(runtime, &rhs_scale, "rhs_scale"); rc != 0) {
    return rc;
  }
  if (int rc = canonicalize_device_pointer(runtime, &task_group_ids, "task_group_ids"); rc != 0) {
    return rc;
  }
  if (int rc = canonicalize_device_pointer(runtime, &task_block_starts, "task_block_starts"); rc != 0) {
    return rc;
  }
  if (int rc = canonicalize_device_pointer(runtime, &task_actual_starts, "task_actual_starts"); rc != 0) {
    return rc;
  }
  if (int rc = canonicalize_device_pointer(runtime, &task_actual_ends, "task_actual_ends"); rc != 0) {
    return rc;
  }
  if (int rc = canonicalize_device_pointer(runtime, &out, "out"); rc != 0) {
    return rc;
  }

  hipFunction_t function = nullptr;
  if (int rc = load_kernel_function(runtime, hsaco_path, symbol, &function); rc != 0) {
    return rc;
  }

  void *reserved0 = nullptr;
  void *reserved1 = nullptr;
  void *params_with_scale_cols[] = {&lhs,
                                    &rhs,
                                    &lhs_scale,
                                    &rhs_scale,
                                    &task_group_ids,
                                    &task_block_starts,
                                    &task_actual_starts,
                                    &task_actual_ends,
                                    &out,
                                    &m,
                                    &n,
                                    &k_packed,
                                    &scale_cols,
                                    &num_tasks,
                                    &reserved0,
                                    &reserved1};
  void *params_without_scale_cols[] = {&lhs,
                                       &rhs,
                                       &lhs_scale,
                                       &rhs_scale,
                                       &task_group_ids,
                                       &task_block_starts,
                                       &task_actual_starts,
                                       &task_actual_ends,
                                       &out,
                                       &m,
                                       &n,
                                       &k_packed,
                                       &num_tasks,
                                       &reserved0,
                                       &reserved1};
  auto stream = reinterpret_cast<hipStream_t>(stream_handle);
  void **params = has_scale_cols_arg != 0 ? params_with_scale_cols : params_without_scale_cols;
  error = runtime->hipModuleLaunchKernel(function, grid_x, grid_y, grid_z, block_x, block_y, block_z,
                                         shared_memory_bytes, stream, params, nullptr);
  if (error != hipSuccess) {
    return fail_hip(runtime, "hipModuleLaunchKernel", error);
  }
  return 0;
}

extern "C" int amd_strix_halo_kernels_launch_ragged_bwd_hsaco(
    const char *hsaco_path, const char *symbol, int device_index, uint32_t grid_x, uint32_t grid_y,
    uint32_t grid_z, uint32_t block_x, uint32_t block_y, uint32_t block_z,
    uint32_t shared_memory_bytes, uintptr_t stream_handle, void *lhs, void *rhs, void *lhs_scale,
    void *rhs_scale, void *group_sizes, void *out, int32_t m, int32_t n, int32_t k_packed,
    int32_t scale_cols, int32_t has_scale_cols_arg) {
  last_error.clear();
  if (hsaco_path == nullptr || symbol == nullptr) {
    return fail("hsaco_path and symbol must be non-null");
  }
  if (grid_x == 0 || grid_y == 0 || grid_z == 0 || block_x == 0 || block_y == 0 || block_z == 0) {
    return fail("grid and block dimensions must be non-zero");
  }
  if (lhs == nullptr || rhs == nullptr || lhs_scale == nullptr || rhs_scale == nullptr ||
      group_sizes == nullptr || out == nullptr) {
    return fail("ragged backward kernel pointers must be non-null");
  }

  if (!load_hip_runtime(true)) {
    return 1;
  }
  HipRuntime *runtime = &hip_runtime;
  hipError_t error = runtime->hipSetDevice(device_index);
  if (error != hipSuccess) {
    return fail_hip(runtime, "hipSetDevice", error);
  }

  if (int rc = canonicalize_device_pointer(runtime, &lhs, "lhs"); rc != 0) {
    return rc;
  }
  if (int rc = canonicalize_device_pointer(runtime, &rhs, "rhs"); rc != 0) {
    return rc;
  }
  if (int rc = canonicalize_device_pointer(runtime, &lhs_scale, "lhs_scale"); rc != 0) {
    return rc;
  }
  if (int rc = canonicalize_device_pointer(runtime, &rhs_scale, "rhs_scale"); rc != 0) {
    return rc;
  }
  if (int rc = canonicalize_device_pointer(runtime, &group_sizes, "group_sizes"); rc != 0) {
    return rc;
  }
  if (int rc = canonicalize_device_pointer(runtime, &out, "out"); rc != 0) {
    return rc;
  }

  hipFunction_t function = nullptr;
  if (int rc = load_kernel_function(runtime, hsaco_path, symbol, &function); rc != 0) {
    return rc;
  }

  void *reserved0 = nullptr;
  void *reserved1 = nullptr;
  void *params_with_scale_cols[] = {&lhs,        &rhs, &lhs_scale, &rhs_scale, &group_sizes, &out,
                                    &m,          &n,   &k_packed,  &scale_cols, &reserved0,   &reserved1};
  void *params_without_scale_cols[] = {&lhs,       &rhs, &lhs_scale, &rhs_scale, &group_sizes,
                                       &out,       &m,   &n,         &k_packed,  &reserved0,
                                       &reserved1};
  auto stream = reinterpret_cast<hipStream_t>(stream_handle);
  void **params = has_scale_cols_arg != 0 ? params_with_scale_cols : params_without_scale_cols;
  error = runtime->hipModuleLaunchKernel(function, grid_x, grid_y, grid_z, block_x, block_y, block_z,
                                         shared_memory_bytes, stream, params, nullptr);
  if (error != hipSuccess) {
    return fail_hip(runtime, "hipModuleLaunchKernel", error);
  }
  return 0;
}
