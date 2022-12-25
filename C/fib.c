#include <stdio.h>

int last = 46; 


/* A function that calculates the fibonacci number of the variable last. */
int fibo()
{
   int i;
   int a=1,b=1,c;
   
   for(i=3; i <= last; i++)
   {
      c = a;      
      a = a + b; 
      b = c;   
   }
   return(a);
}


/* Calling the function fibo() and printing the result. */
int main (void) {
    int f;
    printf("Kaller fibo()...\n");
    f = fibo();
    printf("Fibonacci-tall nr %d: %d\n",last, f);
}