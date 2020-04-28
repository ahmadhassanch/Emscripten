rm bin/*
emcc -O1 hello_world_file.cpp -s WASM=1 --preload-file hello_world_file.txt -o bin/hello_world_file.html

