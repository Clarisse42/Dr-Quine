%define index 5
section .data
data db "%4$cdefine index %5$d%2$csection .data%2$cdata db %3$c%1$s%3$c, 0%2$ccmd db%3$cnasm -f macho64 Sully_%4$c1$d.s -o Sully_%4$c1$d.o && clang -Wall -Wextra -Werror ./Sully_%4$c1$d.o -o Sully_%4$c1$d && ./Sully_%4$c1$d%3$c, 0%2$cfile db %3$cSully_%4$c1$d.s%3$c, 0%2$cflag db %3$cw%3$c, 0%2$csection .text%2$cglobal start%2$cglobal _main%2$cextern _fopen%2$cextern _fclose%2$cextern _free%2$cextern _system%2$cextern _asprintf%2$cextern _fprintf%2$c_start:%2$ccall _main%2$cret%2$c_main:%2$cpush rbp%2$cmov rbp, rsp%2$csub rsp, 16%2$cmov dword [rbp - 12], index%2$ccmp dword [rbp - 12], 0%2$cjle .end%2$ccmp dword [rbp - 12], 0%2$cje .skip%2$cdec dword [rbp - 12]%2$c.skip:%2$clea rdi, [rel rbp - 8]%2$clea rsi, [rel file]%2$cmov rdx, [rbp - 12]%2$ccall _asprintf%2$cmov rdi, [rbp - 8]%2$clea rsi, [rel flag]%2$ccall _fopen%2$cmov r15, rax%2$ccmp rax, 0%2$cje .end_with_free%2$cmov rdi, r15%2$clea rsi, [rel data]%2$clea rdx, [rel data]%2$cmov rcx, 10%2$cmov r8, 34%2$cmov r9, 37%2$cmov dword eax, [rbp - 12]%2$cmov dword [rsp], eax%2$ccall _fprintf%2$cmov rdi, r15%2$ccall _fclose%2$cmov rdi, [rbp - 12]%2$cmov rdx, rdi%2$clea rdi, [rbp - 8]%2$clea rsi, [rel cmd]%2$ccall _asprintf%2$cmov rdi, [rbp - 8]%2$ccall _system%2$cmov rdi, [rbp - 8]%2$ccall _free%2$cadd rsp, 16%2$cmov rsp, rbp%2$cpop rbp%2$cret%2$c.end_with_free:%2$cmov rdi, [rbp - 8]%2$ccall _free%2$c.end:%2$cadd rsp, 16%2$cmov rsp, rbp%2$cpop rbp%2$cret", 0
cmd db "nasm -f macho64 Sully_%1$d.s -o Sully_%1$d.o && clang -Wall -Wextra -Werror ./Sully_%1$d.o -o Sully_%1$d && ./Sully_%1$d", 0
file db "Sully_%1$d.s", 0
flag db "w", 0
section .text
global start
global _main
extern _fopen
extern _fclose
extern _free
extern _system
extern _asprintf
extern _fprintf
_start:
call _main
ret
_main:
push rbp
mov rbp, rsp
sub rsp, 16
mov dword [rbp - 12], index
cmp dword [rbp - 12], 0
jle .end
cmp dword [rbp - 12], 0
je .skip
dec dword [rbp - 12]
.skip:
lea rdi, [rel rbp - 8]
lea rsi, [rel file]
mov rdx, [rbp - 12]
call _asprintf
mov rdi, [rbp - 8]
lea rsi, [rel flag]
call _fopen
mov r15, rax
cmp rax, 0
je .end_with_free
mov rdi, r15
lea rsi, [rel data]
lea rdx, [rel data]
mov rcx, 10
mov r8, 34
mov r9, 37
mov dword eax, [rbp - 12]
mov dword [rsp], eax
call _fprintf
mov rdi, r15
call _fclose
mov rdi, [rbp - 12]
mov rdx, rdi
lea rdi, [rbp - 8]
lea rsi, [rel cmd]
call _asprintf
mov rdi, [rbp - 8]
call _system
mov rdi, [rbp - 8]
call _free
add rsp, 16
mov rsp, rbp
pop rbp
ret
.end_with_free:
mov rdi, [rbp - 8]
call _free
.end:
add rsp, 16
mov rsp, rbp
pop rbp
ret