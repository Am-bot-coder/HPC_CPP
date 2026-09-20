#include<iostream>
#include<cuda_runtime.h> //adding cuda functionality
using namespace std;


__global__ void hello(){
    printf("Hello world from GPU \n");
}

int main()
{   
    cout<<"Hello World from CPU"<<endl;

    hello<<<1,1>>>();
    //-arch=sm_86 p1.cu -o a.exe
    return 0;
}


/*

Output is --> 
Hello World from CPU
Hello world from GPU

*/
