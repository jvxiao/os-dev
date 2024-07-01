#include <stdio.h>

extern int test(int, int);

int test(int a, int b) {
  printf("Hello, custome function test is called \n");
  return a+b;
}
