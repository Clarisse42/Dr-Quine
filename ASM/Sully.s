section .data
s db "TOTOOTTOOTO", 0
file db "Sully_%d.s", 0
opt db "w+"


section .bss
buffer: resb 16

section .text
global _main
extern _fopen
extern _fprintf
extern _system
extern _sprintf

_main:
push rbp
mov rbp, rsp
lea rdi, [rel buffer] 
lea rsi, [rel file]
mov rdx, 5
call  _sprintf
lea rdi, [rel buffer]
lea rsi, [rel opt]
call _fopen
mov rdi, rax
lea rsi, [rel s]
call _fprintf
leave
ret