rm bin/*
mkdir "bin"
emcc overlay.c -o bin/overlay.js -s EXPORTED_FUNCTIONS='["_overlaySound"]' -s EXTRA_EXPORTED_RUNTIME_METHODS='["ccall", "cwrap", "getValue", "setValue"]'