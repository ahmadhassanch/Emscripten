
# export EMCC_DEBUG=1
mkdir -p dist
rm -r dist/*
emcc -O2 src/main.cpp src/myfunc.cpp src/myclass.cpp -Iinclude \
 -o dist/mysqrt.js \
	-s EXPORTED_FUNCTIONS='["_mysqrtC", "_mysqrtArrayC", "_createMyClassC", "_deleteMyClassC", "_setMyClassValueC", "_getMyClassAnswerC"]' \
	--pre-js  wrap/pre.js \
	--post-js wrap/post.js \
	-s EXTRA_EXPORTED_RUNTIME_METHODS='["ccall", "cwrap"]'
#export EMCC_DEBUG=""

# emcc overlay.c -o bin/overlay.js 
# -s EXPORTED_FUNCTIONS='["_overlaySound"]' -s EXTRA_EXPORTED_RUNTIME_METHODS='["ccall", "cwrap", "getValue", "setValue"]'