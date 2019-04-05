# program to print an array of a pre defined size modified 
# by Ian Martin Ajzenszmidt
# to run:
# nasm -f elf64 array.asm
# ld -s -o array array.o
# ./array

section .text
	global _start		; required for the linker (ld)
_start:                 ; start of the main program

mov edx, 22             ; size of the array
mov ecx, ian            ; declaring what is the name of the variable
mov ebx, 1              ; file descriptor (stdout)
mov eax, 4              ; system call number for writing
int 0x80                ; calling the kernel

mov eax, 1              ; for exiting the system
int 0x80                ; calling the kernel again

section .data
ian db 'Ian Martin Ajzenszmidt'
