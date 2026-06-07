cmake_minimum_required(VERSION 3.24)
project(amd_strix_halo_kernels_native LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

find_program(CCACHE_PROGRAM ccache)
if(CCACHE_PROGRAM AND NOT CMAKE_CXX_COMPILER_LAUNCHER)
  set(CMAKE_CXX_COMPILER_LAUNCHER "${CCACHE_PROGRAM}")
endif()

file(GLOB AMDGCN_ASM CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/../kernels/amdgcn/*.s")

find_program(AMD_STRIX_HALO_LLVM_MC
  NAMES llvm-mc
  HINTS /opt/rocm/lib/llvm/bin)
find_program(AMD_STRIX_HALO_LLD
  NAMES lld ld.lld
  HINTS /opt/rocm/lib/llvm/bin)

set(AMDGCN_HSACO)
if(AMD_STRIX_HALO_LLVM_MC AND AMD_STRIX_HALO_LLD)
  foreach(ASM_PATH IN LISTS AMDGCN_ASM)
    get_filename_component(KERNEL_STEM "${ASM_PATH}" NAME_WE)
    set(OBJ_PATH "${CMAKE_CURRENT_BINARY_DIR}/amdgcn_objects/${KERNEL_STEM}.o")
    set(HSACO_PATH "${CMAKE_CURRENT_BINARY_DIR}/amdgcn_hsaco/${KERNEL_STEM}.hsaco")
    add_custom_command(
      OUTPUT "${OBJ_PATH}"
      COMMAND "${CMAKE_COMMAND}" -E make_directory "${CMAKE_CURRENT_BINARY_DIR}/amdgcn_objects"
      COMMAND "${AMD_STRIX_HALO_LLVM_MC}"
              -triple=amdgcn-amd-amdhsa
              -mcpu=gfx1151
              -filetype=obj
              -o "${OBJ_PATH}"
              "${ASM_PATH}"
      DEPENDS "${ASM_PATH}"
      VERBATIM)
    add_custom_command(
      OUTPUT "${HSACO_PATH}"
      COMMAND "${CMAKE_COMMAND}" -E make_directory "${CMAKE_CURRENT_BINARY_DIR}/amdgcn_hsaco"
      COMMAND "${AMD_STRIX_HALO_LLD}"
              -flavor gnu
              -shared
              -o "${HSACO_PATH}"
              "${OBJ_PATH}"
      DEPENDS "${OBJ_PATH}"
      VERBATIM)
    list(APPEND AMDGCN_HSACO "${HSACO_PATH}")
  endforeach()
  add_custom_target(amd_strix_halo_kernels_hsaco ALL DEPENDS ${AMDGCN_HSACO})
endif()

add_library(amd_strix_halo_kernels_dispatch SHARED src/dispatch.cpp)
target_compile_definitions(amd_strix_halo_kernels_dispatch PRIVATE AMD_STRIX_HALO_ARCH_GFX1151=1)
target_compile_definitions(amd_strix_halo_kernels_dispatch PRIVATE AMD_STRIX_HALO_DYNAMIC_HIP_RUNTIME=1)
if(CMAKE_DL_LIBS)
  target_link_libraries(amd_strix_halo_kernels_dispatch PRIVATE ${CMAKE_DL_LIBS})
endif()
if(AMDGCN_HSACO)
  add_dependencies(amd_strix_halo_kernels_dispatch amd_strix_halo_kernels_hsaco)
  target_compile_definitions(amd_strix_halo_kernels_dispatch PRIVATE AMD_STRIX_HALO_HAS_HSACO=1)
else()
  message(WARNING "ROCm llvm-mc/lld were not found; wheel will install AMDGCN source but no HSACO code objects")
  target_compile_definitions(amd_strix_halo_kernels_dispatch PRIVATE AMD_STRIX_HALO_HAS_HSACO=0)
endif()

install(TARGETS amd_strix_halo_kernels_dispatch
        LIBRARY DESTINATION amd_strix_halo_kernels)

# Only the per-kernel launch metadata (*.json) is read at runtime. The AMDGCN
# *.s assembly and the kernels/triton/ IR (*.py/*.ttir/*.ttgir/*.llir) are
# regeneration/inspection provenance kept in the git repository, not the wheel,
# so the binary wheel stays small enough for PyPI.
install(DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/../kernels/amdgcn/"
        DESTINATION amd_strix_halo_kernels/kernels/amdgcn
        FILES_MATCHING PATTERN "*.json")

if(AMDGCN_HSACO)
  install(FILES ${AMDGCN_HSACO}
          DESTINATION amd_strix_halo_kernels/kernels/hsaco)
endif()
