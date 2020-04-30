rm -r bin
mkdir bin
emcc -O3 foo1.c -s SIDE_MODULE=1 -o bin/foo1.wasm
emcc -O3 foo2.c -s SIDE_MODULE=1 -o bin/foo2.wasm
emcc -O3 main.c -s MAIN_MODULE=1 -o bin/main.js --post-js post.js