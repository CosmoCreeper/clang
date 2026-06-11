/*
 Exercise 1-6:
 Verify that the expression `getchar() != EOF` is either 0 or 1.
*/

#include <stdio.h>

int main()
{
  printf("%d\n", getchar() != EOF);

  return 0;
}
