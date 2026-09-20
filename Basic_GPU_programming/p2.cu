#include<iostream>
#include<cuda_runtime.h>
using namespace std;

__global__ void hello(){
    printf("Hello from GPU \n");
}

int main()
{
    cout<<"Hello from CPU "<<endl;
    hello<<<1,10>>>();
    return 0;
}



/*

Hello from CPU
Hello from GPU
Hello from GPU
Hello from GPU
Hello from GPU
Hello from GPU
Hello from GPU
Hello from GPU
Hello from GPU
Hello from GPU

*/