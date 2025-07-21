#include "combine.h"
#include <time.h>
#include <stdio.h>
#include <stdlib.h>

/* https://learn.arm.com/learning-paths/servers-and-cloud-computing/arm_pmu/perf_event_open/ */
#include <linux/perf_event.h>
#include <sys/ioctl.h>
#include <sys/syscall.h>
#include <unistd.h>
#include <inttypes.h>
#include <string.h>


static long perf_event_open(
        struct perf_event_attr *hw_event, 
        pid_t pid, int cpu, int group_fd, 
        unsigned long flags
        )
{
    int fd;
    fd = syscall(SYS_perf_event_open, hw_event, pid,
            cpu, group_fd, flags);
    if (fd == -1) {
        fprintf(stderr, "error: creating perf even open");
        exit(EXIT_FAILURE);
    }
    return fd;
}


int main() {

    long data_len = 100000000;
    int* data = (int*)malloc(data_len * sizeof(int));
    long dest = 1;
    int i;
    clock_t start_clock, end_clock;
    long limit = data_len-2;

    struct perf_event_attr pe;
    int fd;

    memset(&pe, 0, sizeof(struct perf_event_attr));
    pe.type = PERF_TYPE_HARDWARE;
    pe.size = sizeof(struct perf_event_attr);
    pe.config = PERF_COUNT_HW_INSTRUCTIONS;
    pe.disabled = 1;
    pe.exclude_kernel = 1;
    pe.exclude_hv = 1;
    uint64_t count;

    fd = perf_event_open(&pe, 0, -1, -1, 0);

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
    ioctl(fd, PERF_EVENT_IOC_RESET, 0);
    ioctl(fd, PERF_EVENT_IOC_ENABLE, 0);
    combine3(data, data_len, &dest);
    ioctl(fd, PERF_EVENT_IOC_DISABLE, 0);
    end_clock = clock();
    printf("\ncombine3:");
    printf("result of dest: %ld\n", dest);
    printf("number of clock cycles took: %f\n", (double)(end_clock - start_clock));

    read(fd, &count, sizeof(uint64_t));
    printf("Total CPU cycles: %lu\n", count);
    printf("Cycles per element: %.2f\n", (double)count / data_len);

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
    ioctl(fd, PERF_EVENT_IOC_RESET, 0);
    ioctl(fd, PERF_EVENT_IOC_ENABLE, 0);
    combine7(data, data_len, &dest);
    ioctl(fd, PERF_EVENT_IOC_DISABLE, 0);
    end_clock = clock();
    printf("\ncombine7:");
    printf("result of dest: %ld\n", dest);
    printf("number of clock cycles took: %f\n", (double)(end_clock - start_clock));
    printf("CPE (cycles/element): %f\n", (double)(end_clock - start_clock)/data_len);
    read(fd, &count, sizeof(uint64_t));
    printf("Total CPU cycles: %lu\n", count);
    printf("Cycles per element: %.2f\n", (double)count / data_len);

    close(fd);
    return 0;
}
