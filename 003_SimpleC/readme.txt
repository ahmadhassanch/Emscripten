
- Previously, we were running the main function automatically from JS file.

- In this lecture, we will not have a main() function in C, 
  instead we will explicitly call a C function from JS.

- Apparently, main function is automatically exported from C file
  but for other functions we need to explicitly export them.

  e.g. 
		#include <emscripten/bind.h>  ---------------------------------
		using namespace emscripten;   ---------------------------------  

		float lerp(float a, float b, float t) {
		    return (1 - t) * a + t * b;
		}

		EMSCRIPTEN_BINDINGS(my_module) {  -----------------------------
		    function("lerp", &lerp);      -----------------------------
		}

emcc --bind lerp.cpp -o bin/lerp.js
we can run the index.html file of this directory

Note that we need to add the following line:
- var Module = {onRuntimeInitialized: start};
- and the start function can now use the module functions (which were exported via EMSCRIPTEN_BINDINGS)



