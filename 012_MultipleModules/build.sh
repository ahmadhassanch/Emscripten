rm -r bin
mkdir bin
emcc -O3 foo1.c \
	-s MODULARIZE=1 -s EXPORT_NAME="Module1" -s EXPORTED_FUNCTIONS='["_foo1"]'\
	-s EXTRA_EXPORTED_RUNTIME_METHODS='["ccall", "cwrap"]' -o bin/foo1.js

emcc -O3 foo2.c \
	-s MODULARIZE=1 -s EXPORT_NAME="Module2" -s EXPORTED_FUNCTIONS='["_foo2"]'\
	-s EXTRA_EXPORTED_RUNTIME_METHODS='["ccall", "cwrap"]' -o bin/foo2.js

# emcc -O3 foo2.c -s MODULARIZE=1 -s EXPORT_NAME="Module2" -s EXTRA_EXPORTED_RUNTIME_METHODS='["ccall", "cwrap"]' -o bin/foo2.js
# emcc -O3 main.c -s MAIN_MODULE=1 -o bin/main.js --post-js post.js
# -s EXPORTED_FUNCTIONS='["_overlaySound", 