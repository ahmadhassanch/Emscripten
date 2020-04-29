addOnPostRun works in CPP files and onRuntimeInitialized gives issues


https://medium.com/@tdeniffel/pragmatic-compiling-from-c-to-webassembly-a-guide-a496cc5954b8

IMPORTANT EXAMPLE
https://codelabs.developers.google.com/codelabs/web-assembly-intro/index.html?index=..%2F..index#0

https://emscripten.org/docs/porting/connecting_cpp_and_javascript/Interacting-with-code.html

https://itnext.io/the-anatomy-of-webassembly-writing-your-first-webassembly-module-using-c-c-d9ee18f7ac9b

Calling Javasscript Audio API from C++
=========================================
https://emscripten.org/docs/porting/connecting_cpp_and_javascript/embind.html#embind-val-guide


WASM OR JS
============
Deciding to compile to wasm or JS can be done at the linking stage: it doesn’t affect the object files.

WebAssembly is a binary format for executing code on the web, allowing fast start times (smaller download and much faster parsing in browsers when compared to JS or asm.js). Emscripten compiles to WebAssembly by default, but you can also compile to JS for older browsers

We should generate both JS and WASM, this is better. If we want only JS, we can do -s WASM=0. This is slower.
REf: https://emscripten.org/docs/getting_started/Tutorial.html

Older node.js versions do not have WebAssembly support yet. In that case you will see an error message suggesting that you build with -s WASM=0 to disable WebAssembly, and then emscripten will emit the compiled code as JavaScript. In general, WebAssembly is recommended as it has widespread browser support and is more efficient both to execute and to download (and therefore emscripten emits it by default), but sometimes you may need your code to run in an environment where it is not yet present and so should disable it.


SETTING UP
===============

https://webassembly.org/getting-started/developers-guide/

To conveniently access the selected set of tools from the command line, consider adding the following directories to PATH, or call 'source ./emsdk_env.sh' to do this for you.

   /home/ahmad/emsdk:/home/ahmad/emsdk/node/12.9.1_64bit/bin:/home/ahmad/emsdk/upstream/emscripten


source ./emsdk_env.sh

emrun test.html


https://emscripten.org/
https://github.com/emscripten-core/emscripten/tree/master/tests/embind

class MyClass {
public:
  MyClass(int x, std::string y)
    : x(x)
    , y(y)
  {}

  void incrementX() {
    ++x;
  }

  int getX() const { return x; }
  void setX(int x_) { x = x_; }

  static std::string getStringFromInstance(const MyClass& instance) {
    return instance.y;
  }

private:
  int x;
  std::string y;
};

// Binding code
EMSCRIPTEN_BINDINGS(my_class_example) {
  class_<MyClass>("MyClass")
    .constructor<int, std::string>()
    .function("incrementX", &MyClass::incrementX)
    .property("x", &MyClass::getX, &MyClass::setX)
    .class_function("getStringFromInstance", &MyClass::getStringFromInstance)
    ;
}