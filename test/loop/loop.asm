section .data
  list db 1,2,3,4
section .text
global _start

_start:
  MOV eax, 0
  MOV cl, 0
  
loop:
  MOV bl, [list + eax]
  ADD cl, bl
  INC eax
  CMP eax, 4
  JE  end
  JMP loop

end:
  INT 80h
