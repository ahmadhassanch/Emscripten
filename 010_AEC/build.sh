rm bin/*
mkdir bin
emcc overlay.c -o bin/overlay.js -s EXPORTED_FUNCTIONS='["_overlaySound", "_getAddr", "_printVal"]' -s EXTRA_EXPORTED_RUNTIME_METHODS='["ccall", "cwrap"]'


