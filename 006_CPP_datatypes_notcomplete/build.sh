rm bin/*
emcc --bind  arrays.cpp -o bin/arrays.js #-s "EXTRA_EXPORTED_RUNTIME_METHODS=['addOnPostRun']"
emrun index.html 

# emcc --bind lerp.cpp -o bin/lerp.js