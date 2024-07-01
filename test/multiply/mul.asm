section .data

section .text
global _start

_start:
  MOV ax, 5
  MOV cx, 10
  MUL cx

  MOV al, 48
  MOV bl, 4
  IMUL bl

  INT 80h
  
