	.globl sum
sum:
	movl	$0, %eax
	movl	%esi, %ecx

	jmp	entry

loop:
	decl	%ecx
	addl	(%rdi, %rcx, 4), %eax

entry:
	cmpl	$0, %ecx
	jne	loop

	ret
