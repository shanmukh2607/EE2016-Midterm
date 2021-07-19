// THIS CODE IS WRITTEN BY BACHOTTI SAI KRISHNA SHANMUKH EE19B009
// smin1_5.s is for 1 LDR per loop (Q1) and smin2.s is 2 LDR per loop (Q2)
// OS Details : Ubuntu 20.04
// arm-linux-gnueabi-gcc -static -g -O2 -o smin1 q1.c smin1_5.s
// arm-linux-gnueabi-gcc -static -g -O2 -o smin2 q1.c smin2.s
// smin1 and smin2 are the executables respectively 

#include <stdio.h>

int Smin(int a[],int n);


void main(){
	//int A[10] ={45,12,36,54,75,12,25,42,34,19};
	//int B[] = {1,2,3,4,4,6,12,56,80,86};
	//int A[] = {5,1,8,3,4,82,12,6,8,5,23,6,147,134,2};
	//int A[] = {0,1,0,0,0,0,0,0,0,0};
	int A[10]={1, 10, 20, 35, 50, 68, 69, 70, 71, 72};
	printf("%d\n",Smin(A,10));
	}
	
