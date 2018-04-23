;section .bss
;SYS_EXIT equ 1
;SYS_WRITE equ 4
;STDIN equ 0
;STDOUT equ 1
section .text
global _start
_start:
;must be declared for using gcc
;tell linker entry point
;mov eax, 4
;mov ebx, 1
;mov ecx, msg1
;mov edx, len1
;int 0x80
;mov eax, 4
;mov ebx, 1
;mov ecx, msg2
;mov edx, len2
;int 0x80
;mov eax, 4
;mov ebx, 1
;mov ecx, msg3
;mov edx, len3
;int 0x80
section .data
;msg1: db 'Hello, programmers!'                                       
;mov eax,SYS_EXIT ;system call number (sys_exit)
;int 0x80 ;call kernel
;len1: equ $-msg1
;msg2: db 'Welcome to the world of'                                   
;len2: equ $-ms
msg3 db "Linux"                           
;len3: equ $-msg3
