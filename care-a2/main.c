
#include <stdio.h>

unsigned int sqrt(unsigned int num){
    
    short res = 0;
    short bit = 1 << 14; // The second-to-top bit is set: 1 << 30 for 32 bits
    
    // "bit" starts at the highest power of four <= the argument.
    while (bit > num)
        bit >>= 2;
    
    while (bit != 0) {
        if (num >= res + bit) {
            num -= res + bit;
            res = (res >> 1) + bit;
        }
        else
            res >>= 1;
        bit >>= 2;
    }
    return res;


};

void main () {
    unsigned int i;
    for (i = 0; i < 30; i++) {
        printf("The integer square root of %u is %u.\n", i, sqrt(i));
    }
    return;
}

