rm -r bin
mkdir bin
emcc main2.c foo1.c foo2.c -o bin/main.wasm
#emcc main.c foo1.c foo2.c -s STANDALONE_WASM -o bin/main.wasm
wasmer run bin/main.wasm