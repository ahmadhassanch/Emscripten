rm bin/*
emcc --bind -Oz  myclass.cpp -o bin/myclass.js -s "EXTRA_EXPORTED_RUNTIME_METHODS=['addOnPostRun']"
# emrun index.html 