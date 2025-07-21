

void combine3(int data[], long data_len, long* dest) {

    for (long i = 0; i < data_len; i++) {
        *dest = *dest + data[i];
    }
}


void combine4(int* data, long data_len, long* dest) {

    long result = *dest;
    for (long i = 0; i < data_len; i++) {
        result = result + data[i];
    }
    *dest = result;
}

/* 2 x 1 loop unrolling OR k x 1 */
void combine5(int* data, long data_len, long* dest) {

    long result = *dest;
    long i;
    long limit = data_len-1;

    for (i = 0; i < limit; i+=2) {
        result = data[i] + (result + data[i+1]);
    }

    for (; i < data_len; i++) {
        result = result + data[i];
    }

    *dest = result;
}

/* 2 x 2 loop unrolling; k x k loop unrolling */
void combine6(int* data, long data_len, long* dest) {

    long result0 = *dest;
    long result1 = *dest;
    long i;
    long limit = data_len-1;
    
    for (i = 0; i < limit; i+=2) {
        result0 = result0 + data[i];
        result1 = result1 + data[i+1];
    }

    for (; i < data_len; i++) {
        result0 = result0 + data[i];
    }

    *dest = result0 + result1 - 1;
}

/* 2 x 1a loop unrolling OR k x 1a */
void combine7(int* data, long data_len, long* dest) {

    long result = *dest;
    long i;
    long limit = data_len-4;

    for (i = 0; i < limit; i+=4) {
        result = result + (data[i+3] + data[i+2] + data[i+1] + data[i]);
    }

    for (; i < data_len; i++) {
        result = result + data[i];
    }

    *dest = result;
}
