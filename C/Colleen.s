	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_tqt
	.p2align	4, 0x90
_tqt:                                   ## @tqt
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movl	$10, %eax
	movl	$34, %ecx
	leaq	L_.str(%rip), %rdx
	movq	%rdx, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %r8
	movl	%eax, %esi
	movl	%eax, %edx
	movl	%ecx, -12(%rbp)         ## 4-byte Spill
	movl	-12(%rbp), %r9d         ## 4-byte Reload
	movl	$10, (%rsp)
	movl	$10, 8(%rsp)
	movl	$10, 16(%rsp)
	movl	$10, 24(%rsp)
	movl	$10, 32(%rsp)
	movl	$10, 40(%rsp)
	movl	$10, 48(%rsp)
	movl	$10, 56(%rsp)
	movl	$10, 64(%rsp)
	movl	$10, 72(%rsp)
	movl	$10, 80(%rsp)
	movl	$10, 88(%rsp)
	movl	$10, 96(%rsp)
	movb	$0, %al
	callq	_printf
	movl	%eax, -16(%rbp)         ## 4-byte Spill
	addq	$128, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi3:
	.cfi_def_cfa_offset 16
Lcfi4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi5:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	callq	_tqt
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"#include <stdio.h>%cvoid tqt(void){%cchar *s = %c%s%c;%cprintf(s, 10, 10, 34, s, 34, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10);%c}%c/*%c\tHola%c*/%cint main(void){%c/*%c\tHola2%c*/%ctqt();%creturn(0);%c}%c"


.subsections_via_symbols
