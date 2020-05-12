//If the program halted, means the shellcode is faulty and contains null characters

//Author: Paramjot Singh
//Alias: theprojax
//
//Note: This program was picked from stackoverflow.


#include <stdio.h>
#include <string.h>

unsigned char code[] = \
"\xb0\x04\x68\x72\x6c\x64\x0a\x68\x6f\x20\x57\x6f\x68\x48\x65\x6c\x6c\x89\xe1\xb3\x01\xb2\x0c\xcd\x80\x31\xc0\x89\xc3\x04\x3c\xcd\x80";

main(){
	printf("Shellcode Length: %d\n",(int)strlen(code));

	int (*ret)() = (int (*)())code;
	ret();
}
