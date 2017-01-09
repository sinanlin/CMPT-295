	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Ltmp3:
	.cfi_offset %rbx, -24
	movl	_x(%rip), %esi
	leaq	L_.str(%rip), %rbx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_x(%rip), %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_y(%rip), %esi
	leaq	L_.str.1(%rip), %rbx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	movl	_y(%rip), %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_printf
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.section	__DATA,__data
	.globl	_x                      ## @x
	.align	2
_x:
	.long	19088743                ## 0x1234567

	.globl	_y                      ## @y
	.align	2
_y:
	.long	4294967254              ## 0xffffffd6

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"x = %04x\n"

L_.str.1:                               ## @.str.1
	.asciz	"y = %04x\n"


.subsections_via_symbols
