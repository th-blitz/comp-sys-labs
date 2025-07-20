#include "combine.h"
#include <time.h>
#include <stdio.h>
#include <stdlib.h>

int main() {

    long data_len = 100000000;
    int* data = (int*)malloc(data_len * sizeof(int));
    long dest = 1;
    int i;
    clock_t start_clock, end_clock;
    long limit = data_len-2;

    for (i = 0; i < limit; i+=3) {
        data[i] = i+1;
        data[i+1] = i+2;
        data[i+2] = i+3;
    }
    for (; i < data_len; i++) {
        data[i] = i+1;
    }

    dest = 1;
    start_clock = clock();
    combine3(data, data_len, &dest);
    end_clock = clock();
    printf("\ncombine3:");
    printf("result of dest: %ld\n", dest);
    printf("number of clock cycles took: %f\n", (double)(end_clock - start_clock));
    printf("CPE (cycles/element): %f\n", (double)(end_clock - start_clock)/data_len);

    dest = 1;
    start_clock = clock();
    combine4(data, data_len, &dest);
    end_clock = clock();
    printf("\ncombine4:");
    printf("result of dest: %ld\n", dest);
    printf("number of clock cycles took: %f\n", (double)(end_clock - start_clock));
    printf("CPE (cycles/element): %f\n", (double)(end_clock - start_clock)/data_len);

    dest = 1;
    start_clock = clock();
    combine5(data, data_len, &dest);
    end_clock = clock();
    printf("\ncombine5:");
    printf("result of dest: %ld\n", dest);
    printf("number of clock cycles took: %f\n", (double)(end_clock - start_clock));
    printf("CPE (cycles/element): %f\n", (double)(end_clock - start_clock)/data_len);

    dest = 1;
    start_clock = clock();
    combine6(data, data_len, &dest);
    end_clock = clock();
    printf("\ncombine6:");
    printf("result of dest: %ld\n", dest);
    printf("number of clock cycles took: %f\n", (double)(end_clock - start_clock));
    printf("CPE (cycles/element): %f\n", (double)(end_clock - start_clock)/data_len);

    dest = 1;
    start_clock = clock();
    combine7(data, data_len, &dest);
    end_clock = clock();
    printf("\ncombine7:");
    printf("result of dest: %ld\n", dest);
    printf("number of clock cycles took: %f\n", (double)(end_clock - start_clock));
    printf("CPE (cycles/element): %f\n", (double)(end_clock - start_clock)/data_len);

    return 0;
}
