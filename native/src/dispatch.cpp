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

extern "C" int amd_strix_halo_kernels_dispatch_version() { return 5; }

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

extern "C" int amd_strix_halo_kernels_launch_raw_hsaco(
    const char *hsaco_path, const char *symbol, int device_index, uint32_t grid_x,
    uint32_t grid_y, uint32_t grid_z, uint32_t block_x, uint32_t block_y,
    uint32_t block_z, uint32_t shared_memory_bytes, uintptr_t stream_handle,
    void **params, uint32_t param_count, uint64_t device_pointer_mask) {
  last_error.clear();
  if (hsaco_path == nullptr || symbol == nullptr) {
    return fail("hsaco_path and symbol must be non-null");
  }
  if (grid_x == 0 || grid_y == 0 || grid_z == 0 || block_x == 0 || block_y == 0 ||
      block_z == 0) {
    return fail("grid and block dimensions must be non-zero");
  }
  if (params == nullptr || param_count == 0 || param_count > 64) {
    return fail("raw kernel params must contain between 1 and 64 arguments");
  }
  if (param_count < 64 && (device_pointer_mask >> param_count) != 0) {
    return fail("raw kernel device-pointer mask contains unknown arguments");
  }
  for (uint32_t index = 0; index < param_count; ++index) {
    if (params[index] == nullptr) {
      return fail("raw kernel argument storage must be non-null");
    }
  }

  if (!load_hip_runtime(true)) {
    return 1;
  }
  HipRuntime *runtime = &hip_runtime;
  hipError_t error = runtime->hipSetDevice(device_index);
  if (error != hipSuccess) {
    return fail_hip(runtime, "hipSetDevice", error);
  }
  for (uint32_t index = 0; index < param_count; ++index) {
    if ((device_pointer_mask & (uint64_t{1} << index)) == 0) {
      continue;
    }
    auto pointer_storage = reinterpret_cast<void **>(params[index]);
    std::string name = "arg" + std::to_string(index);
    if (int rc = canonicalize_device_pointer(runtime, pointer_storage, name.c_str()); rc != 0) {
      return rc;
    }
  }

  hipFunction_t function = nullptr;
  if (int rc = load_kernel_function(runtime, hsaco_path, symbol, &function); rc != 0) {
    return rc;
  }
  auto stream = reinterpret_cast<hipStream_t>(stream_handle);
  error = runtime->hipModuleLaunchKernel(function, grid_x, grid_y, grid_z, block_x, block_y,
                                         block_z, shared_memory_bytes, stream, params, nullptr);
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

extern "C" int amd_strix_halo_kernels_launch_ragged_fwd_quant_hsaco(
    const char *hsaco_path, const char *symbol, int device_index, uint32_t grid_x, uint32_t grid_y,
    uint32_t grid_z, uint32_t block_x, uint32_t block_y, uint32_t block_z,
    uint32_t shared_memory_bytes, uintptr_t stream_handle, void *lhs, void *rhs, void *lhs_scale,
    void *rhs_scale, void *task_group_ids, void *task_block_starts, void *task_actual_starts,
    void *task_actual_ends, void *out, void *out_scale, int32_t m, int32_t n,
    int32_t k_packed, int32_t scale_cols, int32_t num_tasks) {
  last_error.clear();
  if (hsaco_path == nullptr || symbol == nullptr) {
    return fail("hsaco_path and symbol must be non-null");
  }
  if (grid_x == 0 || grid_y == 0 || grid_z == 0 || block_x == 0 || block_y == 0 || block_z == 0) {
    return fail("grid and block dimensions must be non-zero");
  }
  if (lhs == nullptr || rhs == nullptr || lhs_scale == nullptr || rhs_scale == nullptr ||
      task_group_ids == nullptr || task_block_starts == nullptr || task_actual_starts == nullptr ||
      task_actual_ends == nullptr || out == nullptr || out_scale == nullptr) {
    return fail("ragged quantized forward kernel pointers must be non-null");
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
  if (int rc = canonicalize_device_pointer(runtime, &out_scale, "out_scale"); rc != 0) {
    return rc;
  }

  hipFunction_t function = nullptr;
  if (int rc = load_kernel_function(runtime, hsaco_path, symbol, &function); rc != 0) {
    return rc;
  }

  void *reserved0 = nullptr;
  void *reserved1 = nullptr;
  void *params[] = {&lhs,
                    &rhs,
                    &lhs_scale,
                    &rhs_scale,
                    &task_group_ids,
                    &task_block_starts,
                    &task_actual_starts,
                    &task_actual_ends,
                    &out,
                    &out_scale,
                    &m,
                    &n,
                    &k_packed,
                    &scale_cols,
                    &num_tasks,
                    &reserved0,
                    &reserved1};
  auto stream = reinterpret_cast<hipStream_t>(stream_handle);
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
    int32_t scale_cols, int32_t runtime_scalar_mode) {
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
  void *params_shape_specialized[] = {&lhs, &rhs, &lhs_scale, &rhs_scale, &group_sizes,
                                      &out, &reserved0, &reserved1};
  auto stream = reinterpret_cast<hipStream_t>(stream_handle);
  void **params = nullptr;
  if (runtime_scalar_mode == 0) {
    params = params_without_scale_cols;
  } else if (runtime_scalar_mode == 1) {
    params = params_with_scale_cols;
  } else if (runtime_scalar_mode == 2) {
    params = params_shape_specialized;
  } else {
    return fail("unsupported ragged backward runtime scalar mode");
  }
  error = runtime->hipModuleLaunchKernel(function, grid_x, grid_y, grid_z, block_x, block_y, block_z,
                                         shared_memory_bytes, stream, params, nullptr);
  if (error != hipSuccess) {
    return fail_hip(runtime, "hipModuleLaunchKernel", error);
  }
  return 0;
}

extern "C" int amd_strix_halo_kernels_launch_attention_fwd_hsaco(
    const char *hsaco_path, const char *symbol, int device_index, uint32_t grid_x, uint32_t grid_y,
    uint32_t grid_z, uint32_t block_x, uint32_t block_y, uint32_t block_z,
    uint32_t shared_memory_bytes, uintptr_t stream_handle, void *query, void *key, void *value,
    void *query_scale, void *key_scale, void *value_scale, void *attn_mask, void *out,
    void *workspace, int32_t batch, int32_t query_heads, int32_t kv_heads,
    int32_t query_length, int32_t key_length, int32_t head_dim, int32_t packed_head_dim,
    int32_t value_dim, int32_t decode_splits, float softmax_scale, int32_t mask_stride_b,
    int32_t mask_stride_h, int32_t mask_stride_q, int32_t mask_stride_k, int32_t is_causal,
    int32_t has_window, int32_t window_left, int32_t window_right,
    int32_t query_position_offset, uint32_t runtime_scalar_mask) {
  last_error.clear();
  if (hsaco_path == nullptr || symbol == nullptr) {
    return fail("hsaco_path and symbol must be non-null");
  }
  if (grid_x == 0 || grid_y == 0 || grid_z == 0 || block_x == 0 || block_y == 0 || block_z == 0) {
    return fail("grid and block dimensions must be non-zero");
  }
  if (query == nullptr || key == nullptr || value == nullptr || query_scale == nullptr ||
      key_scale == nullptr || value_scale == nullptr || attn_mask == nullptr || out == nullptr ||
      workspace == nullptr) {
    return fail("attention forward kernel pointers must be non-null");
  }
  constexpr uint32_t kAllAttentionRuntimeScalars = (1u << 19) - 1u;
  if ((runtime_scalar_mask & ~kAllAttentionRuntimeScalars) != 0) {
    return fail("attention forward runtime scalar mask contains unknown arguments");
  }

  if (!load_hip_runtime(true)) {
    return 1;
  }
  HipRuntime *runtime = &hip_runtime;
  hipError_t error = runtime->hipSetDevice(device_index);
  if (error != hipSuccess) {
    return fail_hip(runtime, "hipSetDevice", error);
  }

  struct NamedPointer {
    void **pointer;
    const char *name;
  };
  NamedPointer pointers[] = {
      {&query, "query"},
      {&key, "key"},
      {&value, "value"},
      {&query_scale, "query_scale"},
      {&key_scale, "key_scale"},
      {&value_scale, "value_scale"},
      {&attn_mask, "attn_mask"},
      {&out, "out"},
      {&workspace, "workspace"},
  };
  for (const NamedPointer &entry : pointers) {
    if (int rc = canonicalize_device_pointer(runtime, entry.pointer, entry.name); rc != 0) {
      return rc;
    }
  }

  hipFunction_t function = nullptr;
  if (int rc = load_kernel_function(runtime, hsaco_path, symbol, &function); rc != 0) {
    return rc;
  }

  void *reserved0 = nullptr;
  void *reserved1 = nullptr;
  void *pointer_params[] = {
      &query,       &key,       &value,     &query_scale, &key_scale,
      &value_scale, &attn_mask, &out,       &workspace,
  };
  void *scalar_params[] = {
      &batch,          &query_heads,    &kv_heads,      &query_length,
      &key_length,     &head_dim,       &packed_head_dim, &value_dim,
      &decode_splits,  &softmax_scale,  &mask_stride_b, &mask_stride_h,
      &mask_stride_q,  &mask_stride_k,  &is_causal,     &has_window,
      &window_left,    &window_right,   &query_position_offset,
  };
  void *params[30];
  uint32_t param_count = 0;
  for (void *pointer_param : pointer_params) {
    params[param_count++] = pointer_param;
  }
  for (uint32_t index = 0; index < 19; ++index) {
    if ((runtime_scalar_mask & (1u << index)) != 0) {
      params[param_count++] = scalar_params[index];
    }
  }
  params[param_count++] = &reserved0;
  params[param_count++] = &reserved1;
  auto stream = reinterpret_cast<hipStream_t>(stream_handle);
  error = runtime->hipModuleLaunchKernel(function, grid_x, grid_y, grid_z, block_x, block_y, block_z,
                                         shared_memory_bytes, stream, params, nullptr);
  if (error != hipSuccess) {
    return fail_hip(runtime, "hipModuleLaunchKernel", error);
  }
  return 0;
}

extern "C" int amd_strix_halo_kernels_launch_attention_bwd_hsaco(
    const char *hsaco_path, const char *symbol, int device_index, uint32_t grid_x, uint32_t grid_y,
    uint32_t grid_z, uint32_t block_x, uint32_t block_y, uint32_t block_z,
    uint32_t shared_memory_bytes, uintptr_t stream_handle, void *buffer0, void *buffer1,
    void *buffer2, void *buffer3, void *buffer4, void *buffer5, void *buffer6, void *buffer7,
    void *buffer8, void *buffer9, void *buffer10, void *buffer11, int32_t batch,
    int32_t query_heads, int32_t kv_heads, int32_t query_length, int32_t key_length,
    int32_t head_dim, int32_t packed_head_dim, int32_t value_dim, float softmax_scale,
    int32_t mask_stride_b, int32_t mask_stride_h, int32_t mask_stride_q,
    int32_t mask_stride_k, int32_t is_causal, int32_t has_window, int32_t window_left,
    int32_t window_right, int32_t query_position_offset, uint32_t runtime_scalar_mask) {
  last_error.clear();
  if (hsaco_path == nullptr || symbol == nullptr) {
    return fail("hsaco_path and symbol must be non-null");
  }
  if (grid_x == 0 || grid_y == 0 || grid_z == 0 || block_x == 0 || block_y == 0 || block_z == 0) {
    return fail("grid and block dimensions must be non-zero");
  }
  void *buffers[] = {buffer0, buffer1, buffer2, buffer3, buffer4, buffer5,
                     buffer6, buffer7, buffer8, buffer9, buffer10, buffer11};
  for (void *buffer : buffers) {
    if (buffer == nullptr) {
      return fail("attention backward kernel pointers must be non-null");
    }
  }
  constexpr uint32_t kAllAttentionBackwardRuntimeScalars = (1u << 18) - 1u;
  if ((runtime_scalar_mask & ~kAllAttentionBackwardRuntimeScalars) != 0) {
    return fail("attention backward runtime scalar mask contains unknown arguments");
  }
  if (!load_hip_runtime(true)) {
    return 1;
  }
  HipRuntime *runtime = &hip_runtime;
  hipError_t error = runtime->hipSetDevice(device_index);
  if (error != hipSuccess) {
    return fail_hip(runtime, "hipSetDevice", error);
  }
  const char *buffer_names[] = {
      "buffer0", "buffer1", "buffer2", "buffer3", "buffer4", "buffer5",
      "buffer6", "buffer7", "buffer8", "buffer9", "buffer10", "buffer11",
  };
  for (uint32_t index = 0; index < 12; ++index) {
    if (int rc = canonicalize_device_pointer(runtime, &buffers[index], buffer_names[index]); rc != 0) {
      return rc;
    }
  }
  hipFunction_t function = nullptr;
  if (int rc = load_kernel_function(runtime, hsaco_path, symbol, &function); rc != 0) {
    return rc;
  }
  void *scalar_params[] = {
      &batch,          &query_heads,    &kv_heads,      &query_length,
      &key_length,     &head_dim,       &packed_head_dim, &value_dim,
      &softmax_scale,  &mask_stride_b,  &mask_stride_h, &mask_stride_q,
      &mask_stride_k,  &is_causal,      &has_window,    &window_left,
      &window_right,   &query_position_offset,
  };
  void *reserved0 = nullptr;
  void *reserved1 = nullptr;
  void *params[32];
  uint32_t param_count = 0;
  for (uint32_t index = 0; index < 12; ++index) {
    params[param_count++] = &buffers[index];
  }
  for (uint32_t index = 0; index < 18; ++index) {
    if ((runtime_scalar_mask & (1u << index)) != 0) {
      params[param_count++] = scalar_params[index];
    }
  }
  params[param_count++] = &reserved0;
  params[param_count++] = &reserved1;
  auto stream = reinterpret_cast<hipStream_t>(stream_handle);
  error = runtime->hipModuleLaunchKernel(function, grid_x, grid_y, grid_z, block_x, block_y, block_z,
                                         shared_memory_bytes, stream, params, nullptr);
  if (error != hipSuccess) {
    return fail_hip(runtime, "hipModuleLaunchKernel", error);
  }
  return 0;
}

extern "C" int amd_strix_halo_kernels_launch_attention_reduce_hsaco(
    const char *hsaco_path, const char *symbol, int device_index, uint32_t grid_x, uint32_t grid_y,
    uint32_t grid_z, uint32_t block_x, uint32_t block_y, uint32_t block_z,
    uint32_t shared_memory_bytes, uintptr_t stream_handle, void *workspace, void *out,
    int32_t value_dim, int32_t decode_splits) {
  last_error.clear();
  if (hsaco_path == nullptr || symbol == nullptr) {
    return fail("hsaco_path and symbol must be non-null");
  }
  if (grid_x == 0 || grid_y == 0 || grid_z == 0 || block_x == 0 || block_y == 0 || block_z == 0) {
    return fail("grid and block dimensions must be non-zero");
  }
  if (workspace == nullptr || out == nullptr) {
    return fail("attention reduce kernel pointers must be non-null");
  }

  if (!load_hip_runtime(true)) {
    return 1;
  }
  HipRuntime *runtime = &hip_runtime;
  hipError_t error = runtime->hipSetDevice(device_index);
  if (error != hipSuccess) {
    return fail_hip(runtime, "hipSetDevice", error);
  }
  if (int rc = canonicalize_device_pointer(runtime, &workspace, "workspace"); rc != 0) {
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
  void *params[] = {&workspace, &out, &value_dim, &decode_splits, &reserved0, &reserved1};
  auto stream = reinterpret_cast<hipStream_t>(stream_handle);
  error = runtime->hipModuleLaunchKernel(function, grid_x, grid_y, grid_z, block_x, block_y, block_z,
                                         shared_memory_bytes, stream, params, nullptr);
  if (error != hipSuccess) {
    return fail_hip(runtime, "hipModuleLaunchKernel", error);
  }
  return 0;
}
