	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_sqrt
	.align	4, 0x90
_sqrt:                                  ## @sqrt
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
	movw	$16384, %ax             ## imm = 0x4000
	.align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	%edx, %eax
	shrl	$2, %eax
	cmpl	%edi, %edx
	ja	LBB0_1
## BB#2:                                ## %.preheader
	xorl	%eax, %eax
	testw	%cx, %cx
	je	LBB0_7
	.align	4, 0x90
LBB0_3:                                 ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	movswl	%cx, %ecx
	leal	(%rcx,%rax), %esi
	movl	%edi, %edx
	subl	%esi, %edx
	jae	LBB0_4
## BB#5:                                ##   in Loop: Header=BB0_3 Depth=1
	shrl	%eax
	movl	%edi, %edx
	jmp	LBB0_6
	.align	4, 0x90
LBB0_4:                                 ##   in Loop: Header=BB0_3 Depth=1
	sarl	%eax
	addl	%ecx, %eax
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=1
	shrl	$2, %ecx
	cwtl
	testw	%cx, %cx
	movl	%edx, %edi
	jne	LBB0_3
LBB0_7:                                 ## %._crit_edge
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
Ltmp6:
	.cfi_offset %rbx, -32
Ltmp7:
	.cfi_offset %r14, -24
	leaq	L_.str(%rip), %r14
	xorl	%ebx, %ebx
	.align	4, 0x90
LBB1_1:                                 ## %.preheader
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_2 Depth 2
                                        ##     Child Loop BB1_4 Depth 2
	movw	$16384, %cx             ## imm = 0x4000
	.align	4, 0x90
LBB1_2:                                 ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movw	%cx, %ax
	movswl	%ax, %edx
	movl	%edx, %ecx
	shrl	$2, %ecx
	cmpl	%ebx, %edx
	ja	LBB1_2
## BB#3:                                ## %.preheader.i
                                        ##   in Loop: Header=BB1_1 Depth=1
	xorl	%edx, %edx
	testw	%ax, %ax
	movl	%ebx, %esi
	je	LBB1_8
	.align	4, 0x90
LBB1_4:                                 ## %.lr.ph.i
                                        ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cwtl
	leal	(%rax,%rdx), %edi
	movl	%esi, %ecx
	subl	%edi, %ecx
	jae	LBB1_5
## BB#6:                                ##   in Loop: Header=BB1_4 Depth=2
	shrl	%edx
	movl	%esi, %ecx
	jmp	LBB1_7
	.align	4, 0x90
LBB1_5:                                 ##   in Loop: Header=BB1_4 Depth=2
	sarl	%edx
	addl	%eax, %edx
LBB1_7:                                 ##   in Loop: Header=BB1_4 Depth=2
	shrl	$2, %eax
	movswl	%dx, %edx
	testw	%ax, %ax
	movl	%ecx, %esi
	jne	LBB1_4
LBB1_8:                                 ## %sqrt.exit
                                        ##   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	_printf
	incl	%ebx
	cmpl	$30, %ebx
	jne	LBB1_1
## BB#9:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"The integer square root of %u is %u.\n"


.subsections_via_symbols
