#include <stdio.h>

extern int sum();

/**
 * The function `sum()` takes no arguments and returns an integer
 */

int main(void)
{
    int summ;
    summ = sum();
    printf("Sum = %d \n",summ);
}