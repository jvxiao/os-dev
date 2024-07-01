section .bss
  num RESB 3

section .data
  num2 times 3 DB 2 

section .text
global _start

_start:
  MOV bl, 1
  MOV bl, [num2]
  MOV [num], bl
  MOV [num+1], bl
  MOV [num+2], bl

  MOV eax, 1
  int 80h
