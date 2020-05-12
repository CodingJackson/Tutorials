; Program: To create a shellcode to print a statement using stack technique

; Author: Paramjot Singh
; Alias: theprojax

global _start

segment .text

_start:
	mov al,4
	push 0x0a646c72
	push 0x6f57206f
	push 0x6c6c6548
	mov ecx, esp
	mov bl, 1
	mov dl, 0xc
	int 0x80

	xor eax, eax
	mov ebx, eax
	add al, 60
	int 0x80
