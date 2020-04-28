rm bin/*
emcc hello_world.c -s WASM=1 -o bin/hello.html

