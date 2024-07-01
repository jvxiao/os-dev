extern printf
extern exit
extern test   ; customer function
;printf(fmt, msg)

section .data
  msg DD "Hello world", 0
  fmt DB "output is: %s", 10, 0

section .text
global main

main:
  ; PUSH msg
  ; PUSH fmt
  ; CALL printf
  PUSH 1
  PUSH 2
  CALL test   ; result is store in eax
  PUSH eax
  CALL exit

