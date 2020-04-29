

1. We can convert a simple C code to Javascript, which can run in nodejs or in html file.
	- emcc hello_world.c -s WASM=0 -o bin/hello.js
    - node bin/hello.js
    - or we can use the same js in html
		<!DOCTYPE html>
		<!doctype html>
		<html>
		<script src="bin/hello.js"></script>
		</html>

2. Above is slow, so we can convert to webassembly (WASM) by just changing the flag
	- emcc hello_world.c -s WASM=1 -o bin/hello.js
    - node bin/hello.js

WE CAN ALSO RUN THE FILES VIA EMRUN IF WE GENERATE *.HTML INSTEAD OF *.JS

3. Note that older browsers might not support WASM, so we can use JS, but would be slower.
   Still we have a huge advantage of using C code in browser.

What we learnt?
- We can compile C code to JS (or JS + WASM) 