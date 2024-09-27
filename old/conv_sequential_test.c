#include "stdio.h"
#include "omp.h"
#include "time.h"
#include "stdlib.h"

void printarr(int* arr, int len) {
  printf("[");
  for (int i = 0; i < len; i++) {
    printf("%d", arr[i]);
    if (i != len - 1) {
      printf(", ");
    }
  }
  printf("]\n");
}

void printarr_vert(int* arr, int len) {
  for (int i = 0; i < len; i++) {
    printf("%d\n", arr[i]);
  }
}

int main(void) {
  int NA = 8;
  int NF = 5;
  int NO = NA - NF + 1;

  int A[] = { 7, 5, 3, 2, 0, 4, 2, 5 };
  int F[] = { 1, 2, 2, 1, 1 };
  int* O = (int*)calloc(NO, sizeof(int));

  for (int i = 0; i < NO; i++) {
    for (int m = i; m < NF + i; m++) {
      O[i] += A[m] * F[m - i];
    }
  }

  printarr_vert(O, NO);
  
  return 0;
}