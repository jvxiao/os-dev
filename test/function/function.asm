section .text
global _start

_start:
  CALL AddTwo
  MOV  ebx, eax,
  MOV eax, 1
  INT 80h

AddTwo:
  MOV eax, 1
  MOV ebx, 2
  ADD eax, ebx 
  RET
