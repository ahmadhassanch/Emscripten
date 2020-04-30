#include <stdio.h>


int  sum(char *arr, int length)
{
  int ret = 0;
  for (int i = 0; i < length; ++i)
  {
    ret += arr[i];
  }
  return ret;
}

float  sumf(float *arr, int length)
{
  int ret = 0;
  for (int i = 0; i < length; ++i)
  {
    ret += arr[i];
  }
  return ret;
}

int float_multiply_array(float factor, float *arr, int length) {
  for (int i = 0; i <  length; i++) {
    printf("\n %3.2f", arr[i]);
    arr[i] = factor * arr[i];
  }
  return 0;
}