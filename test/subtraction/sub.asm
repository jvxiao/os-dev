section .data
  num1 dd 1
  num2 dd 5
section .text
global _start

_start:

  MOV eax, 5
  MOV ebx, 3
  SUB eax, ebx  ; eax = 2

  MOV eax, 5
  SUB eax, 3    ; eax = 2
  
  MOV eax, 5
  SUB eax, [num1]   ; eax = 4

  MOV eax, 1
  SUB [num2], eax   ; numb2 = 4

  MOV eax, 2
  MOV ebx, 4
  SUB eax, ebx

  int 80h

