#include<iostream>
#include<cuda_runtime.h>
using namespace std;


__global__ void hello(){
    printf("Hello from GPU %d\n",threadIdx.x);
}


int main()
{
    cout<<"Hello from CPU "<<endl;
    hello<<<1,10>>>();
    return 0;
}


/*

Hello from CPU
Hello from GPU 0
Hello from GPU 1
Hello from GPU 2
Hello from GPU 3
Hello from GPU 4
Hello from GPU 5
Hello from GPU 6
Hello from GPU 7
Hello from GPU 8

*/