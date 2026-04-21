#include <stdio.h>
#include <string.h>

int main()
{
  const char world[] = "world";
  printf("Hello, %s!\n", world);

  const float celsius = 31.9;
  const float fahrenheit = 89.42;
  printf("The current temperature is as below.\n");
  printf("%2.1f°C %2.2f°F\n", celsius, fahrenheit);

  return 0;
}
