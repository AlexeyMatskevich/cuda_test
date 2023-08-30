cmake_minimum_required(VERSION 3.27)
project(cuda_test CUDA)

set(CMAKE_CUDA_STANDARD 20)

add_executable(cuda_test main.cu)

set_target_properties(cuda_test PROPERTIES
        CUDA_SEPARABLE_COMPILATION ON)
