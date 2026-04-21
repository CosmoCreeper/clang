/*
  Exercise 1-3
  > Modify the temperature conversion program
    to print a heading above the table.

  Actual output:
  > A global heading describing the intent of the table.
  > A header for each input field, Celsius and Fahrenheit.
  > Simplified and cleaned up code compared to the original.
*/

#include <stdio.h>

int main()
{
    // Only two lines added, two headers and a global heading
    printf("Temperature Conversion Table\n");
    printf("Celsius   Fahrenheit\n");

    float fahr, celsius;
    const int lower = 0;
    const int upper = 300;
    const int step = 20;

    fahr = lower;
    while (fahr <= upper) {
        celsius = (5.0 / 9.0) * (fahr - 32.0);
        printf("    %3.0f       %6.1f\n", fahr, celsius);
        fahr += step;
    }

    return 0;
}
