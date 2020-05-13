; Program: This shellcode is an example to figure out the address of labels automatically
; Note: As we know, the shellcode is a hex string of bytes and hence labels can't be used to create a shellcode. Thus, we use addresses that are dynamically allocated.

; Author: Paramjot Singh
; Alias: theprojax

global _start

segment .text

_start:
	jmp caller	

shellcode:
	pop ecx
	xor eax,eax
	mov al, 4
	mov bl, 1
	mov dl, 12
	int 0x80	

	xor eax,eax
	mov ebx, eax
	add eax, 1 
	int 0x80

caller:
	call shellcode
	message: db "Hello World!",0xa
