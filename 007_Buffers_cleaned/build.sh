# export EMSCRIPTEN_PATH=/Users/adishavit/Work/Labs/emscripten_tests/emsdk/emsdk_portable/emscripten/1.35.0
# source /Users/adishavit/Work/Labs/emscripten_tests/emsdk/emsdk_portable/emsdk_env.sh

emcc sum.cpp  --post-js sum_post.js -std=c++14 --bind -o bin/sum.js -O1  --memory-init-file 0 -s EXTRA_EXPORTED_RUNTIME_METHODS='["ccall", "cwrap"]'
