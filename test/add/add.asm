section .data

section .text
global _start

_start:
  ; MOV eax, 0x1
  ; MOV ebx, 0x2
  ; ADD eax, ebx
  
  MOV al, 0b11111111
  MOV bl, 0b1
  ADD al, bl
  int 80h