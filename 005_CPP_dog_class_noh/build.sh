rm bin/*
emcc --bind -Oz  dog.cpp -o bin/dog.js -s "EXTRA_EXPORTED_RUNTIME_METHODS=['addOnPostRun']" 
emrun index.html 