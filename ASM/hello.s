section .text

global start

start:
mov rax, 0x2000004
mov rdi, 1
mov rsi, hello
mov rdx, len
syscall
mov rax, 0x2000001
mov rdi, 0
syscall

section .data
hello db "Hello World !", 10, 0
len equ $ - hello

