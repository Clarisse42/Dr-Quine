section .data
s db "section .data%cs db %c%s%c ,0%c%csection .text%cextern _printf%cglobal _main%c_main:%cpush rbp%cmov rbp, rsp%clea rdi, [rel s]%cmov rsi, 10%cmov rdx, 34%clea rcx, [rel s]%cmov r8, 34%cmov r9, 10%cmov rax, 22%c_loop:%cpush 10%cdec rax%cjnz _loop%ccall _printf%cleave%cret" ,0

section .text
extern _printf
global _main
_main:
push rbp
mov rbp, rsp
lea rdi, [rel s]
mov rsi, 10
mov rdx, 34
lea rcx, [rel s]
mov r8, 34
mov r9, 10
mov rax, 22
_loop:
push 10
dec rax
jnz _loop
call _printf
leave
ret