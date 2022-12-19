#include <stdio.h>


/* Declaring an array of 102400 integers. */
int array[102400];

/**
 * It fills an array with 1024 elements with the numbers 0 to 1023
 */
int main(){
   int i,k;
   for(k=0;k<2000000;k++){
      for(i=0;i<1024;i++){
         array[i]=i;
      }
   }
   printf("Ferdig");
}