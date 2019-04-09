section .data
s db "Toto"

section .text
global _start
extern _asprintf
_main:
push rbp
mov rbp, rsp
