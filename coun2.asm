section .text
   global _start
_start: 

  mov ecx,10
  mov eax, '9'

  _11:
  mov [num], eax
  mov eax, 4
  mov ebx, 1
  push ecx
  mov  ecx, num
  mov  edx, 1
  int  0x80
  mov  eax, [num]
  add  eax, '-1'
  sub  eax
  add  eax, '-1'
  pop  ecx
  loop  _11
  mov eax,1
  int 0x80
section .bss
num resb 1  
 
