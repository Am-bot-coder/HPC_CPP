#include <iostream>
#include <cuda_runtime.h>

using namespace std;

__global__ void helloGPU()
{
    printf("Hello from GPU\n");
}

int main()
{
    cout << "Hello from CPU!" << endl;

    helloGPU<<<1, 1>>>();

    cudaDeviceSynchronize();

    return 0;
}