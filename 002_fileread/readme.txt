
- We can also use our C code which can read / write files
  > but would be done in a virtual file system in browser.

- Lets compile and run code in C
  gcc hello_world_file.cpp -o a.out
  ./a.out

- If we want to do the same thing in JS, we need to load file in memory
  emcc -O1 hello_world_file.cpp -s WASM=1 --preload-file hello_world_file.txt -o bin/hello_world_file.html

- EMRUN did not work in this case.
  we had to run PYTHON server to load above html file. We alsot tested the hello_world_file.js via our index.html
  and got consolelog in the console.

