#include <stdio.h>
typedef unsigned short bit16;
void cvt2bitstr(bit16, char*);
void main() {
	bit16 x;
	char *bitstr;
	char msg[16] = "The binary is:";
    puts(&msg);
	x = 0x1234;
	puts(msg);
	cvt2bitstr(x, bitstr);
	puts(bitstr);
}
