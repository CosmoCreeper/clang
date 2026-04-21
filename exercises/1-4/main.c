/*
  Exercise 1-4
  > Write a program to print the corresponding
    celsius-fahrenheit table.

  Actual output:
  > A rewrite of the original celsius-fahrenheit table.
    <- Due to unknown "corresponding" definition.
*/

#include <stdio.h>

int main()
{
    // Starting fahrenheit is the same as the lower bound
    float fahr = 0;
    const int upper = 300;
    const int step = 20;

    while (fahr <= upper) {
        const float celsius = (5.0 / 9.0) * (fahr - 32.0);
        printf("    %3.0f       %6.1f\n", fahr, celsius);
        fahr += step;
    }

    return 0;
}
