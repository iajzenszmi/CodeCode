section .text
global _start
_start:
;must be declared for linker (ld)
;tell linker entry point
;writing the name 'Ian Martin'
mov edx,30 ;message length
mov ecx, name ;message to write
mov ebx,1 ;file descriptor (stdout)
mov eax,4 ;system call number (sys_write)
int 0x80 ;call kernel
mov [name], dword '****'
; Changed the name to **** Martin Ajzenszmidt
;writing the name 'Ian Martin Ajzenszmidt'
mov edx,30 ;message length
mov ecx,name ;message to write
mov ebx,1 ;file descriptor (stdout)
mov eax,4 ;system call number (sys_write)
int 0x80 ;call kernel
mov eax,1 ;system call number (sys_exit)
int 0x80 ;call kernel
section .data
name db 'Ian Martin Ajzenszmidt'
