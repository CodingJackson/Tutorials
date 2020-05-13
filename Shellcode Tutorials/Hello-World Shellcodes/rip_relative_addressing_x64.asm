; Program: This example shellcode is based on RIP relative addressing, using method by removing additional NULLs while using relative addressing

; Author: Paramjot Singh
; Alias: theprojax
; Note: RIP relative addressing is possible only on x64 based assembly

segment .text
	jmp _start
	message db "Hello World"

_start:
	xor rax, rax
	add rax, 1
	mov rdi, rax
	lea rsi, [rel message]      ;RIP relative addressing
	xor rdx, rdx
	mov rdx, 11
	syscall

	xor eax, eax
	mov edi, eax
	add eax, 60
	syscall
	

	
