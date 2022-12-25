#include <stdio.h>

/**
 * "The function sums the numbers from 1 to 40000 and prints the result."
 * 
 * The function is written in C, a language that is very similar to C++. The function is also written
 * in a style that is very similar to C++
 */

int main() {
    int i, sum = 0;
    int N = 40000;

    for(i=1; i<=N; i++){
        sum += i;
    }

    printf("Sum: %d\n", sum);
}