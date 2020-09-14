// matlab_dll.cpp : Defines the exported functions for the DLL application.
//

#include <Windows.h>
#include <iostream>

#include "matlab_dll.h"


int test_print_console()
{
    std::cout << "executed test_print_console()" << std::endl;
    return 1;
}

void test_vector_add(float* c, float* a, float* b, int length)
{
    // c = a + b
    for (int i = 0; i < length; i++)
    {
        c[i] = a[i] + b[i];
    }
}