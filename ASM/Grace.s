;Coucou commentaire
%define S ";Coucou commentaire%2$c%%define S %3$c%1$s%3$c%2$c%%define TQT_MAIN global _main%2$c%%define MAIN_MENOS_MENOS _main:%2$csection .data%2$cs db S, 0%2$cfile db %3$cGrace_kid.s%3$c, 0%2$csection .text%2$cglobal _start%2$cextern _dprintf%2$cTQT_MAIN%2$c_start:%2$cMAIN_MENOS_MENOS%2$cpush rbp%2$cmov rbp, rsp%2$clea rdi, [rel file]%2$cmov rsi, 0x0202%2$cmov rax, 0x2000005%2$csyscall%2$cmov rdi, rax%2$clea rsi, [rel s]%2$clea rdx, [rel s]%2$cmov rcx, 10%2$cmov r8, 34%2$ccall _dprintf%2$cleave%2$cret"
%define TQT_MAIN global _main
%define MAIN_MENOS_MENOS _main:
section .data
s db S, 0
file db "Grace_kid.s", 0
section .text
global _start
extern _dprintf
TQT_MAIN
_start:
MAIN_MENOS_MENOS
push rbp
mov rbp, rsp
lea rdi, [rel file]
mov rsi, 0x0202
mov rax, 0x2000005
syscall
mov rdi, rax
lea rsi, [rel s]
lea rdx, [rel s]
mov rcx, 10
mov r8, 34
call _dprintf
leave
ret