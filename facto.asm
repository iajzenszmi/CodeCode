section .text
    global _start
_start:
mov bx, 3
call proc_fact
add  ax, 30h
mov  [fact], ax

mov edx,len
mov ecx,msg
mov ebx,1
mov eax,4
int 0x80

mov edx,1
mov ecx,fact
mov ebx,1
mov eax,4
int 0x80

mov eax,1
int 0x80

proc_fact:
  cmp bl,1
  jg do_calculation
  mov ax,1
  ret
do_calculation:
   dec bl
   call proc_fact
   inc bl
   mul bl
   ret

section .data
msg db 'Factorial 3 is:',0xA
len equ $- msg

section .bss
fact resb 1   
