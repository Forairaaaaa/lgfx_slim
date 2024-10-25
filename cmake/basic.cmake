project(lgfx_slim)

cmake_policy(SET CMP0077 NEW)
set(CMAKE_CXX_STANDARD 17)

# Src files
file(GLOB_RECURSE LGFX_SLIM_SRCS
    ${LGFX_SLIM_ROOT_DIR}/src/*.c
    ${LGFX_SLIM_ROOT_DIR}/src/*.cc
    ${LGFX_SLIM_ROOT_DIR}/src/*.cpp
)
# Include
set(LGFX_SLIM_INCS
    ${LGFX_SLIM_ROOT_DIR}/src/
    ${LGFX_SLIM_ROOT_DIR}/src/lgfx/v1/
)


add_library(${PROJECT_NAME} ${LGFX_SLIM_SRCS})
target_include_directories(${PROJECT_NAME} PUBLIC ${LGFX_SLIM_INCS})


option(LGFX_SLIM_BUILD_EXAMPLE "Build example" ON)


# Example
if(LGFX_SLIM_BUILD_EXAMPLE)
    add_subdirectory(./example/)
endif()

# CTest
enable_testing()
add_test(basic example/basic)
