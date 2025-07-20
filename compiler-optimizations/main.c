#include "combine.h"
#include <time.h>
#include <stdio.h>
#include <stdlib.h>

int main() {

    int data_len = 1000000;
    int* data = (int*)malloc(data_len * sizeof(int));
    int dest = 1;
    int i;
    clock_t start_clock, end_clock;

    for (i = 0; i < (data_len-1)/2; i+=2) {
        data[i] = i+1;
        data[i+1] = i+2;
    }

    dest = 1;
    start_clock = clock();
    combine3(data, data_len, &dest);
    end_clock = clock();
    printf("\ncombine3:");
    printf("result of dest: %d\n", dest);
    printf("number of clock cycles took: %f\n", (double)(end_clock - start_clock));

    dest = 1;
    start_clock = clock();
    combine4(data, data_len, &dest);
    end_clock = clock();
    printf("\ncombine4:");
    printf("result of dest: %d\n", dest);
    printf("number of clock cycles took: %f\n", (double)(end_clock - start_clock));

    dest = 1;
    start_clock = clock();
    combine5(data, data_len, &dest);
    end_clock = clock();
    printf("\ncombine5:");
    printf("result of dest: %d\n", dest);
    printf("number of clock cycles took: %f\n", (double)(end_clock - start_clock));

    dest = 1;
    start_clock = clock();
    combine6(data, data_len, &dest);
    end_clock = clock();
    printf("\ncombine6:");
    printf("result of dest: %d\n", dest);
    printf("number of clock cycles took: %f\n", (double)(end_clock - start_clock));

    dest = 1;
    start_clock = clock();
    combine7(data, data_len, &dest);
    end_clock = clock();
    printf("\ncombine7:");
    printf("result of dest: %d\n", dest);
    printf("number of clock cycles took: %f\n", (double)(end_clock - start_clock));

    return 0;
}
