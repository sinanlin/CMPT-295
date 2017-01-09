	.globl sqrt
sqrt:
	movl $0, %eax   #   return value initializtion
    movl $15,%ecx   #   Loop counter
    movl $1, %edx   #   Set the edx to value 1
    shl $15, %edx   #   shif left by 15 bit

loop:
    cmp $0, %ecx
    jl endloop

    leal(%edx,%eax),%esi
    imul %esi,%esi
    cmp %esi, %edi
    jl function

    decl %ecx
    add %edx, %eax
    shr $1, %edx

    jmp loop

function
    shr $1, %edx
    decl %ecx
    jum loop

endloop
	ret
