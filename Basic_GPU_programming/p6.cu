#include<iostream>
#include<cuda_runtime.h>
using namespace std;


__global__ void hello(){
    printf("Hello from GPU , Block-ID :%d, Thread-ID :%d\n",blockIdx.x,threadIdx.x);
    int id = blockIdx.x * blockDim.x + threadIdx.x;
    printf(" Id-->%d ",id);
}

//block Idx --> tell in which block i am
//block Dim --> tell how many blocks present there


int main()
{
    cout<<"Hello from CPU "<<endl;
    hello<<<2,5>>>();
    cout<<"==========================================>"<<endl;
    

    return 0;
}

/*

Hello from CPU
==========================================>
Hello from GPU , Block-ID :0, Thread-ID :0
Hello from GPU , Block-ID :0, Thread-ID :1
Hello from GPU , Block-ID :0, Thread-ID :2
Hello from GPU , Block-ID :0, Thread-ID :3
Hello from GPU , Block-ID :0, Thread-ID :4
Hello from GPU , Block-ID :1, Thread-ID :0
Hello from GPU , Block-ID :1, Thread-ID :1
Hello from GPU , Block-ID :1, Thread-ID :2
Hello from GPU , Block-ID :1, Thread-ID :3
Hello from GPU , Block-ID :1, Thread-ID :4
 Id-->0  Id-->1  Id-->2  Id-->3  Id-->4  Id-->5  Id-->6  Id-->7  Id-->8  Id-->9
 
*/