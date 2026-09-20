#include<iostream>
#include<cuda_runtime.h>
using namespace std;

__global__ void hello(){
    printf("Hello from GPU \n");
}

int main()
{
    cout<<"Hello from CPU "<<endl;
    hello<<<2,10>>>();
    return 0;
}



/*

Hello from GPU
Hello from GPU
Hello from GPU
Hello from GPU
Hello from GPU
Hello from GPU
Hello from GPU
Hello from GPU
Hello from GPU
Hello from GPU
Hello from GPU
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