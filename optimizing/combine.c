

void combine3(int* data, int data_len, int* dest) {

    for (int i = 0; i < data_len; i++) {
        *dest = *dest + data[i];
    }
}


void combine4(int* data, int data_len, int* dest) {

    int result = *dest;
    for (int i = 0; i < data_len; i++) {
        result = result + data[i];
    }
    *dest = result;
}
    
