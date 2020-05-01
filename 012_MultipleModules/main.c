// #include <stdio.h>
// #include "wasmer.h"

// int foo1();
// int foo2();
// int fileRead();


// int main()
// {

//     int result = foo1() + foo2();
//     printf("hello world %d\n", result);
//     // fileRead();

//     return 0;
// }


// int fileRead() {
//   FILE *file = fopen("hello_world_file.txt", "rb");
//   if (!file) {
//     printf("cannot open file\n");
//     return 1;
//   }
//   while (!feof(file)) {
//     char c = fgetc(file);
//     if (c != EOF) {
//       putchar(c);
//     }
//   }
//   fclose (file);
//   return 0;
// }