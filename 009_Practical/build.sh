# export EMSCRIPTEN_PATH=/Users/adishavit/Work/Labs/emscripten_tests/emsdk/emsdk_portable/emscripten/1.35.0
# source /Users/adishavit/Work/Labs/emscripten_tests/emsdk/emsdk_portable/emsdk_env.sh

emcc sum.c  --post-js sum_post.js -s EXPORTED_FUNCTIONS='["_sum", "_float_multiply_array"]' -o bin/sum.js -O1  --memory-init-file 0 -s EXTRA_EXPORTED_RUNTIME_METHODS='["ccall", "cwrap"]'
