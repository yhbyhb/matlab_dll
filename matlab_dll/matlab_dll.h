#pragma once

#ifdef __cplusplus
extern "C" {
#endif

    __declspec(dllexport) int test_print_console();

    __declspec(dllexport) void test_vector_add(float* c, float* a, float* b, int length);

#ifdef __cplusplus
}
#endif