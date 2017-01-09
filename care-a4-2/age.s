

.string1:
	.string "Please enter your name: "
.string2:
	.string "Thank you %s!\n"
.string3:
	.string "Please enter your year of birth: "

	.globl get_age
get_age:
	push %rbx              
	push %rbp              # callee saved registers

	                       # local variables:
	leaq -8(%rsp), %rsp    #   - endptr
	leaq -24(%rsp), %rsp   #   - name_str[24]
	leaq -24(%rsp), %rsp   #   - year_of_birth[24]
	mov %rsp, %rbp

	movq $.string1, %rdi
	xorl %eax, %eax
	call printf            # printf("Please enter your name: ");

	leaq 24(%rbp), %rdi
	call gets              # gets(name_str);

	# add your code here
	









	ret

