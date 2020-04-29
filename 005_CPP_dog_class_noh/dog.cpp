#include <iostream>
#include <string>
using namespace std;
#include <emscripten/bind.h>

using namespace emscripten;


class Dog {
  string name;

  public:
	Dog(string n): name(n) {}
	
	string getGreeting () {
	  return "My name is " + name + ", hello from C++!x";
	}
	
	void makeSound () {
	  cout << "bark!" << '\n';
	}
};




EMSCRIPTEN_BINDINGS (c1) {
  class_<Dog>("Dog")
    .constructor<string>()
    .function("makeSound", &Dog::makeSound)
    .function("getGreeting", &Dog::getGreeting);
}
