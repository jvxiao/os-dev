section .data
  num1 DD 3.14
  num2 DD 2.1


section .text
global _start

_start:
  MOVSS xmm0, [num1]
  MOVSS xmm1, [num2]
  ADDSS xmm0, xmm1
  MOV ebx, 1
  INT 80h

; p $xmm0_v4.float[0]