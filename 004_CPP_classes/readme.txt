
Now we will run classes.

- Not much different from simple C example.
  > emcc --bind -Oz  myclass.cpp -o bin/myclass.js -s "EXTRA_EXPORTED_RUNTIME_METHODS=['addOnPostRun']"
  > Slightly different syntax to export
  > Module.addOnPostRun() was required (onRuntimeInitialized did not work)