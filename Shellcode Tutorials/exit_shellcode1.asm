; Program: This is a simple exit shellcode program; Part 1

; Author: Paramjot Singh
; Alias: theprojax


global _start
	segment .text
		
		_start:
			xor eax, eax
			mov al, 1
			xor ebx, ebx
			int 0x80
