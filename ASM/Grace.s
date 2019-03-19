;Coucou commentaire
%define S "toto"
%define TQT_MAIN global _main
%define MAIN_MENOS_MENOS _main:
section .data
file db "Grace_kid.s", 0
s db S, 0
section .text
global _start
extern _dprintf
TQT_MAIN
_start:
MAIN_MENOS_MENOS
push rbp
mov rbp, rsp
lea rdi, [rel file]
lea rsi, [rel s]
# mov rsi, 0x0202
# mov rax, 0x2000005
# syscall
# mov r8, 34
# mov r9, 10
# push 10
# push 10
# push 10
# push 34
# push 34
# mov rax, 20
# _loop:
# push 10
# dec rax
# jnz _loop
call _dprintf
leave
ret