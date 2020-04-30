#include <stdio.h>
#include <string>

#include <emscripten.h>
#include <emscripten/bind.h>
using namespace emscripten;

extern "C"
{
  EMSCRIPTEN_KEEPALIVE
  int  sum(char *arr, int length)
  {
    int ret = 0;
    for (int i = 0; i < length; ++i)
    {
      ret += arr[i];
    }
    return ret;
  }

}
//////////////////////////////////////////////////


int sum_str(std::string const& str)
{
  int ret = 0;
  for (int i = 0; i < str.size(); ++i)
  {
    ret += (unsigned char)str[i];
  }
  return ret;
}

int sum_str_cpy(std::string str)
{
  int ret = 0;
  for (int i = 0; i < str.size(); ++i)
  {
    ret += str[i];
  }
  return ret;
}


EMSCRIPTEN_BINDINGS(my_module) {
    function("sum_str", &sum_str);
    function("sum_str_cpy", &sum_str_cpy);
    function("sum_str_cpy", &sum_str_cpy);

}
