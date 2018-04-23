SYS_EXIT equ 1
SYS_WRITE equ 4
STDIN  EQU 0
STDOUT equ 1
section    .text
  global _start
_start:
mov eax, SYS_WRITE
mov ebx,  STDOUT
mov ecx,  msg1
mov edx,  len1
int 0x80

mov eax, SYS_WRITE
mov ebx, STDOUT
mov ecx, msg2
mov edx, len2
int 0x80

mov eax, SYS_WRITE
mov ebx, STDOUT
mov ecx, msg3 
mov edx, len3
int 0x80
    mov eax,SYS_EXIT
    INT 0X80

section .data
msg1 db  'Hello, programmers',0xA,0xD
len1 equ $ - msg1
msg2 db 'Welcome to the world of,',0xA,0xD
len2 equ $ - msg2
msg3 db 'Linux assembly programming',0xA,0xD
len3 equ $ - msg3
