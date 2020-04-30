#include <math.h>
#include <stdio.h>

float* overlaySound(float *BufferA, float *BufferB, float *finalArray, int length) {

    printf("Size = %d\n", length);
    for (int cnt = 0; cnt < length; cnt++){
        finalArray[cnt] = BufferA[cnt] + BufferB[cnt];
        printf("From C --- %f | %f = %f\n",BufferA[cnt], BufferB[cnt], finalArray[cnt]);
    }

   return finalArray;
}


