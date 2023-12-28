.global tigermain

.data
L80:
.long 1
.ascii "\n" 
L79:
.long 1
.ascii "\n" 
L73:
.long 21
.ascii "ERROR: BAD DIMENSIONS" 
L68:
.long 1
.ascii "\n" 
L63:
.long 1
.ascii " " 
L39:
.long 1
.ascii "\n" 
L34:
.long 1
.ascii " " 
L11:
.long 1
.ascii "0" 
L10:
.long 1
.ascii "-" 
L7:
.long 1
.ascii "0" 

.text
tigermain:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $240, %esp
push %ebx
push %edi
push %esi
L82:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN CONST
mov -28(%ebp), %edx
mov $0, %edx
mov %edx, -28(%ebp) 
mov -28(%ebp), %edx
push %edx
mov %edx, -28(%ebp) 
#IN CONST
mov -32(%ebp), %edx
mov $3, %edx
mov %edx, -32(%ebp) 
mov -32(%ebp), %edx
push %edx
mov %edx, -32(%ebp) 
call initArray
add $8, %esp
pop %edx
pop %ecx
mov -24(%ebp), %edx
mov %eax, %edx
mov %edx, -24(%ebp) 
pop %eax
mov -24(%ebp), %edx
mov %edx, %ebx
mov %edx, -24(%ebp) 
#IN REGMOVE
mov -36(%ebp), %edx
mov %ebp, %edx
mov %edx, -36(%ebp) 
#IN CONST
mov -40(%ebp), %edx
mov $-4, %edx
mov %edx, -40(%ebp) 
mov -40(%ebp), %edx
mov -36(%ebp), %eax
add %edx, %eax
mov %edx, -40(%ebp) 
mov %eax, -36(%ebp) 
mov -36(%ebp), %edx
mov -20(%ebp), %eax
mov %edx, %eax
mov %edx, -36(%ebp) 
mov %eax, -20(%ebp) 
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
push %ebx
#IN CONST
mov -48(%ebp), %edx
mov $4, %edx
mov %edx, -48(%ebp) 
mov -48(%ebp), %edx
push %edx
mov %edx, -48(%ebp) 
call initArray
add $8, %esp
pop %edx
pop %ecx
mov -44(%ebp), %edx
mov %eax, %edx
mov %edx, -44(%ebp) 
pop %eax
mov -44(%ebp), %edx
mov -16(%ebp), %eax
mov %edx, %eax
mov %edx, -44(%ebp) 
mov %eax, -16(%ebp) 
#IN MEM MOVE
mov -16(%ebp), %edx
mov -20(%ebp), %eax
mov %edx, (%eax)
mov %edx, -16(%ebp) 
mov %eax, -20(%ebp) 
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN CONST
mov -56(%ebp), %edx
mov $0, %edx
mov %edx, -56(%ebp) 
mov -56(%ebp), %edx
push %edx
mov %edx, -56(%ebp) 
#IN CONST
mov -60(%ebp), %edx
mov $4, %edx
mov %edx, -60(%ebp) 
mov -60(%ebp), %edx
push %edx
mov %edx, -60(%ebp) 
call initArray
add $8, %esp
pop %edx
pop %ecx
mov -52(%ebp), %edx
mov %eax, %edx
mov %edx, -52(%ebp) 
pop %eax
mov -52(%ebp), %edx
mov %edx, %edi
mov %edx, -52(%ebp) 
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
push %edi
#IN CONST
mov -68(%ebp), %edx
mov $3, %edx
mov %edx, -68(%ebp) 
mov -68(%ebp), %edx
push %edx
mov %edx, -68(%ebp) 
call initArray
add $8, %esp
pop %edx
pop %ecx
mov -64(%ebp), %edx
mov %eax, %edx
mov %edx, -64(%ebp) 
pop %eax
mov -64(%ebp), %edx
mov %edx, %esi
mov %edx, -64(%ebp) 
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN CONST
mov -76(%ebp), %edx
mov $0, %edx
mov %edx, -76(%ebp) 
mov -76(%ebp), %edx
push %edx
mov %edx, -76(%ebp) 
#IN CONST
mov -80(%ebp), %edx
mov $4, %edx
mov %edx, -80(%ebp) 
mov -80(%ebp), %edx
push %edx
mov %edx, -80(%ebp) 
call initArray
add $8, %esp
pop %edx
pop %ecx
mov -72(%ebp), %edx
mov %eax, %edx
mov %edx, -72(%ebp) 
pop %eax
mov -72(%ebp), %edx
mov %edx, %ecx
mov %edx, -72(%ebp) 
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN CONST
mov -88(%ebp), %edx
mov $0, %edx
mov %edx, -88(%ebp) 
mov -88(%ebp), %edx
push %edx
mov %edx, -88(%ebp) 
#IN CONST
mov -92(%ebp), %edx
mov $4, %edx
mov %edx, -92(%ebp) 
mov -92(%ebp), %edx
push %edx
mov %edx, -92(%ebp) 
call initArray
add $8, %esp
pop %edx
pop %ecx
mov -84(%ebp), %edx
mov %eax, %edx
mov %edx, -84(%ebp) 
pop %eax
mov -84(%ebp), %edx
mov -8(%ebp), %eax
mov %edx, %eax
mov %edx, -84(%ebp) 
mov %eax, -8(%ebp) 
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN CONST
mov -100(%ebp), %edx
mov $0, %edx
mov %edx, -100(%ebp) 
mov -100(%ebp), %edx
push %edx
mov %edx, -100(%ebp) 
#IN CONST
mov -104(%ebp), %edx
mov $4, %edx
mov %edx, -104(%ebp) 
mov -104(%ebp), %edx
push %edx
mov %edx, -104(%ebp) 
call initArray
add $8, %esp
pop %edx
pop %ecx
mov -96(%ebp), %edx
mov %eax, %edx
mov %edx, -96(%ebp) 
pop %eax
mov -96(%ebp), %edx
mov -12(%ebp), %eax
mov %edx, %eax
mov %edx, -96(%ebp) 
mov %eax, -12(%ebp) 
#IN CALL
push %eax
push %ecx
push %edx
#IN CONST
mov -112(%ebp), %edx
mov $4, %edx
mov %edx, -112(%ebp) 
mov -112(%ebp), %edx
push %edx
mov %edx, -112(%ebp) 
#IN CONST
mov -116(%ebp), %edx
mov $3, %edx
mov %edx, -116(%ebp) 
mov -116(%ebp), %edx
push %edx
mov %edx, -116(%ebp) 
push %esi
push %ebp
call L3
add $16, %esp
pop %edx
pop %ecx
mov -108(%ebp), %edx
mov %eax, %edx
mov %edx, -108(%ebp) 
pop %eax
#IN CALL
push %eax
push %ecx
push %edx
#IN CONST
mov -124(%ebp), %edx
mov $3, %edx
mov %edx, -124(%ebp) 
mov -124(%ebp), %edx
push %edx
mov %edx, -124(%ebp) 
#IN CONST
mov -128(%ebp), %edx
mov $4, %edx
mov %edx, -128(%ebp) 
mov -128(%ebp), %edx
push %edx
mov %edx, -128(%ebp) 
#IN MEM
mov -136(%ebp), %edx
mov %ebp, %edx
mov %edx, -136(%ebp) 
#IN CONST
mov -140(%ebp), %edx
mov $-4, %edx
mov %edx, -140(%ebp) 
mov -140(%ebp), %edx
mov -136(%ebp), %eax
add %edx, %eax
mov %edx, -140(%ebp) 
mov %eax, -136(%ebp) 
mov -136(%ebp), %edx
mov -132(%ebp), %eax
mov (%edx), %eax
mov %edx, -136(%ebp) 
mov %eax, -132(%ebp) 
mov -132(%ebp), %edx
push %edx
mov %edx, -132(%ebp) 
push %ebp
call L2
add $16, %esp
pop %edx
pop %ecx
mov -120(%ebp), %edx
mov %eax, %edx
mov %edx, -120(%ebp) 
pop %eax
#IN CALL
push %eax
push %ecx
push %edx
#IN CONST
mov -148(%ebp), %edx
mov $3, %edx
mov %edx, -148(%ebp) 
mov -148(%ebp), %edx
push %edx
mov %edx, -148(%ebp) 
#IN CONST
mov -152(%ebp), %edx
mov $4, %edx
mov %edx, -152(%ebp) 
mov -152(%ebp), %edx
push %edx
mov %edx, -152(%ebp) 
#IN MEM
mov -160(%ebp), %edx
mov %ebp, %edx
mov %edx, -160(%ebp) 
#IN CONST
mov -164(%ebp), %edx
mov $-4, %edx
mov %edx, -164(%ebp) 
mov -164(%ebp), %edx
mov -160(%ebp), %eax
add %edx, %eax
mov %edx, -164(%ebp) 
mov %eax, -160(%ebp) 
mov -160(%ebp), %edx
mov -156(%ebp), %eax
mov (%edx), %eax
mov %edx, -160(%ebp) 
mov %eax, -156(%ebp) 
mov -156(%ebp), %edx
push %edx
mov %edx, -156(%ebp) 
push %ebp
call L3
add $16, %esp
pop %edx
pop %ecx
mov -144(%ebp), %edx
mov %eax, %edx
mov %edx, -144(%ebp) 
pop %eax
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov -172(%ebp), %edx
mov $L79, %edx
mov %edx, -172(%ebp) 
mov -172(%ebp), %edx
push %edx
mov %edx, -172(%ebp) 
call print
add $4, %esp
pop %edx
pop %ecx
mov -168(%ebp), %edx
mov %eax, %edx
mov %edx, -168(%ebp) 
pop %eax
#IN CALL
push %eax
push %ecx
push %edx
#IN CONST
mov -180(%ebp), %edx
mov $4, %edx
mov %edx, -180(%ebp) 
mov -180(%ebp), %edx
push %edx
mov %edx, -180(%ebp) 
#IN CONST
mov -184(%ebp), %edx
mov $3, %edx
mov %edx, -184(%ebp) 
mov -184(%ebp), %edx
push %edx
mov %edx, -184(%ebp) 
push %esi
push %ebp
call L2
add $16, %esp
pop %edx
pop %ecx
mov -176(%ebp), %edx
mov %eax, %edx
mov %edx, -176(%ebp) 
pop %eax
#IN CALL
push %eax
push %ecx
push %edx
#IN CONST
mov -192(%ebp), %edx
mov $4, %edx
mov %edx, -192(%ebp) 
mov -192(%ebp), %edx
push %edx
mov %edx, -192(%ebp) 
#IN CONST
mov -196(%ebp), %edx
mov $3, %edx
mov %edx, -196(%ebp) 
mov -196(%ebp), %edx
push %edx
mov %edx, -196(%ebp) 
push %esi
push %ebp
call L3
add $16, %esp
pop %edx
pop %ecx
mov -188(%ebp), %edx
mov %eax, %edx
mov %edx, -188(%ebp) 
pop %eax
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov -204(%ebp), %edx
mov $L80, %edx
mov %edx, -204(%ebp) 
mov -204(%ebp), %edx
push %edx
mov %edx, -204(%ebp) 
call print
add $4, %esp
pop %edx
pop %ecx
mov -200(%ebp), %edx
mov %eax, %edx
mov %edx, -200(%ebp) 
pop %eax
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN CONST
mov -212(%ebp), %edx
mov $4, %edx
mov %edx, -212(%ebp) 
mov -212(%ebp), %edx
push %edx
mov %edx, -212(%ebp) 
#IN CONST
mov -216(%ebp), %edx
mov $3, %edx
mov %edx, -216(%ebp) 
mov -216(%ebp), %edx
push %edx
mov %edx, -216(%ebp) 
push %esi
#IN CONST
mov -220(%ebp), %edx
mov $3, %edx
mov %edx, -220(%ebp) 
mov -220(%ebp), %edx
push %edx
mov %edx, -220(%ebp) 
#IN CONST
mov -224(%ebp), %edx
mov $4, %edx
mov %edx, -224(%ebp) 
mov -224(%ebp), %edx
push %edx
mov %edx, -224(%ebp) 
#IN MEM
mov -232(%ebp), %edx
mov %ebp, %edx
mov %edx, -232(%ebp) 
#IN CONST
mov -236(%ebp), %edx
mov $-4, %edx
mov %edx, -236(%ebp) 
mov -236(%ebp), %edx
mov -232(%ebp), %eax
add %edx, %eax
mov %edx, -236(%ebp) 
mov %eax, -232(%ebp) 
mov -232(%ebp), %edx
mov -228(%ebp), %eax
mov (%edx), %eax
mov %edx, -232(%ebp) 
mov %eax, -228(%ebp) 
mov -228(%ebp), %edx
push %edx
mov %edx, -228(%ebp) 
push %ebp
call L5
add $28, %esp
pop %edx
pop %ecx
mov -208(%ebp), %edx
mov %eax, %edx
mov %edx, -208(%ebp) 
pop %eax
mov -208(%ebp), %edx
mov %edx, %eax
mov %edx, -208(%ebp) 
jmp L81
L81:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L5:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $112, %esp
push %ebx
push %edi
push %esi
L85:
#IN REGMOVE
#IN CONST
mov $1, %edi
mov -4(%ebp), %edx
mov %edi, %edx
mov %edx, -4(%ebp) 
#IN CJUMP
#IN MEM
mov %ebp, %ecx
#IN CONST
mov $28, %ebx
add %ebx, %ecx
mov (%ecx), %esi
#IN MEM
mov -12(%ebp), %edx
mov %ebp, %edx
mov %edx, -12(%ebp) 
#IN CONST
mov -16(%ebp), %edx
mov $20, %edx
mov %edx, -16(%ebp) 
mov -16(%ebp), %edx
mov -12(%ebp), %eax
add %edx, %eax
mov %edx, -16(%ebp) 
mov %eax, -12(%ebp) 
mov -12(%ebp), %edx
mov -8(%ebp), %eax
mov (%edx), %eax
mov %edx, -12(%ebp) 
mov %eax, -8(%ebp) 
mov -8(%ebp), %edx
cmp %esi, %edx
mov %edx, -8(%ebp) 
jne L74
L75:
#IN REGMOVE
#IN CONST
mov -32(%ebp), %edx
mov $0, %edx
mov %edx, -32(%ebp) 
mov -32(%ebp), %edx
mov -4(%ebp), %eax
mov %edx, %eax
mov %edx, -32(%ebp) 
mov %eax, -4(%ebp) 
L74:
#IN CJUMP
#IN CONST
mov -20(%ebp), %edx
mov $0, %edx
mov %edx, -20(%ebp) 
mov -20(%ebp), %edx
mov -4(%ebp), %eax
cmp %edx, %eax
mov %edx, -20(%ebp) 
mov %eax, -4(%ebp) 
jne L76
L77:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN MEM
mov %ebp, %edi
#IN CONST
mov $32, %ebx
add %ebx, %edi
mov (%edi), %esi
push %esi
#IN MEM
mov -44(%ebp), %edx
mov %ebp, %edx
mov %edx, -44(%ebp) 
#IN CONST
mov -48(%ebp), %edx
mov $28, %edx
mov %edx, -48(%ebp) 
mov -48(%ebp), %edx
mov -44(%ebp), %eax
add %edx, %eax
mov %edx, -48(%ebp) 
mov %eax, -44(%ebp) 
mov -44(%ebp), %edx
mov -40(%ebp), %eax
mov (%edx), %eax
mov %edx, -44(%ebp) 
mov %eax, -40(%ebp) 
mov -40(%ebp), %edx
push %edx
mov %edx, -40(%ebp) 
#IN MEM
mov -56(%ebp), %edx
mov %ebp, %edx
mov %edx, -56(%ebp) 
#IN CONST
mov -60(%ebp), %edx
mov $24, %edx
mov %edx, -60(%ebp) 
mov -60(%ebp), %edx
mov -56(%ebp), %eax
add %edx, %eax
mov %edx, -60(%ebp) 
mov %eax, -56(%ebp) 
mov -56(%ebp), %edx
mov -52(%ebp), %eax
mov (%edx), %eax
mov %edx, -56(%ebp) 
mov %eax, -52(%ebp) 
mov -52(%ebp), %edx
push %edx
mov %edx, -52(%ebp) 
#IN MEM
mov -68(%ebp), %edx
mov %ebp, %edx
mov %edx, -68(%ebp) 
#IN CONST
mov -72(%ebp), %edx
mov $20, %edx
mov %edx, -72(%ebp) 
mov -72(%ebp), %edx
mov -68(%ebp), %eax
add %edx, %eax
mov %edx, -72(%ebp) 
mov %eax, -68(%ebp) 
mov -68(%ebp), %edx
mov -64(%ebp), %eax
mov (%edx), %eax
mov %edx, -68(%ebp) 
mov %eax, -64(%ebp) 
mov -64(%ebp), %edx
push %edx
mov %edx, -64(%ebp) 
#IN MEM
mov -80(%ebp), %edx
mov %ebp, %edx
mov %edx, -80(%ebp) 
#IN CONST
mov -84(%ebp), %edx
mov $16, %edx
mov %edx, -84(%ebp) 
mov -84(%ebp), %edx
mov -80(%ebp), %eax
add %edx, %eax
mov %edx, -84(%ebp) 
mov %eax, -80(%ebp) 
mov -80(%ebp), %edx
mov -76(%ebp), %eax
mov (%edx), %eax
mov %edx, -80(%ebp) 
mov %eax, -76(%ebp) 
mov -76(%ebp), %edx
push %edx
mov %edx, -76(%ebp) 
#IN MEM
mov -92(%ebp), %edx
mov %ebp, %edx
mov %edx, -92(%ebp) 
#IN CONST
mov -96(%ebp), %edx
mov $12, %edx
mov %edx, -96(%ebp) 
mov -96(%ebp), %edx
mov -92(%ebp), %eax
add %edx, %eax
mov %edx, -96(%ebp) 
mov %eax, -92(%ebp) 
mov -92(%ebp), %edx
mov -88(%ebp), %eax
mov (%edx), %eax
mov %edx, -92(%ebp) 
mov %eax, -88(%ebp) 
mov -88(%ebp), %edx
push %edx
mov %edx, -88(%ebp) 
#IN MEM
mov -104(%ebp), %edx
mov %ebp, %edx
mov %edx, -104(%ebp) 
#IN CONST
mov -108(%ebp), %edx
mov $8, %edx
mov %edx, -108(%ebp) 
mov -108(%ebp), %edx
mov -104(%ebp), %eax
add %edx, %eax
mov %edx, -108(%ebp) 
mov %eax, -104(%ebp) 
mov -104(%ebp), %edx
mov -100(%ebp), %eax
mov (%edx), %eax
mov %edx, -104(%ebp) 
mov %eax, -100(%ebp) 
mov -100(%ebp), %edx
push %edx
mov %edx, -100(%ebp) 
call L4
add $28, %esp
pop %edx
pop %ecx
mov %eax, %ecx
pop %eax
mov -36(%ebp), %edx
mov %ecx, %edx
mov %edx, -36(%ebp) 
L78:
mov -36(%ebp), %edx
mov %edx, %eax
mov %edx, -36(%ebp) 
jmp L84
L76:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov -28(%ebp), %edx
mov $L73, %edx
mov %edx, -28(%ebp) 
mov -28(%ebp), %edx
push %edx
mov %edx, -28(%ebp) 
call print
add $4, %esp
pop %edx
pop %ecx
mov -24(%ebp), %edx
mov %eax, %edx
mov %edx, -24(%ebp) 
pop %eax
mov -24(%ebp), %edx
mov -36(%ebp), %eax
mov %edx, %eax
mov %edx, -24(%ebp) 
mov %eax, -36(%ebp) 
jmp L78
L84:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L4:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $440, %esp
push %ebx
push %edi
push %esi
L88:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN CONST
mov $0, %esi
push %esi
#IN MEM
mov -16(%ebp), %edx
mov %ebp, %edx
mov %edx, -16(%ebp) 
#IN CONST
mov -20(%ebp), %edx
mov $16, %edx
mov %edx, -20(%ebp) 
mov -20(%ebp), %edx
mov -16(%ebp), %eax
add %edx, %eax
mov %edx, -20(%ebp) 
mov %eax, -16(%ebp) 
mov -16(%ebp), %edx
mov (%edx), %edi
mov %edx, -16(%ebp) 
push %edi
call initArray
add $8, %esp
pop %edx
pop %ecx
mov %eax, %ecx
pop %eax
mov %ecx, %ebx
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
push %ebx
#IN MEM
mov -32(%ebp), %edx
mov %ebp, %edx
mov %edx, -32(%ebp) 
#IN CONST
mov -36(%ebp), %edx
mov $32, %edx
mov %edx, -36(%ebp) 
mov -36(%ebp), %edx
mov -32(%ebp), %eax
add %edx, %eax
mov %edx, -36(%ebp) 
mov %eax, -32(%ebp) 
mov -32(%ebp), %edx
mov -28(%ebp), %eax
mov (%edx), %eax
mov %edx, -32(%ebp) 
mov %eax, -28(%ebp) 
mov -28(%ebp), %edx
push %edx
mov %edx, -28(%ebp) 
call initArray
add $8, %esp
pop %edx
pop %ecx
mov -24(%ebp), %edx
mov %eax, %edx
mov %edx, -24(%ebp) 
pop %eax
mov -24(%ebp), %edx
mov -12(%ebp), %eax
mov %edx, %eax
mov %edx, -24(%ebp) 
mov %eax, -12(%ebp) 
#IN REGMOVE
#IN CONST
mov -40(%ebp), %edx
mov $0, %edx
mov %edx, -40(%ebp) 
mov -40(%ebp), %edx
mov -8(%ebp), %eax
mov %edx, %eax
mov %edx, -40(%ebp) 
mov %eax, -8(%ebp) 
#IN REGMOVE
#IN MEM
mov -52(%ebp), %edx
mov %ebp, %edx
mov %edx, -52(%ebp) 
#IN CONST
mov -56(%ebp), %edx
mov $16, %edx
mov %edx, -56(%ebp) 
mov -56(%ebp), %edx
mov -52(%ebp), %eax
add %edx, %eax
mov %edx, -56(%ebp) 
mov %eax, -52(%ebp) 
mov -52(%ebp), %edx
mov -48(%ebp), %eax
mov (%edx), %eax
mov %edx, -52(%ebp) 
mov %eax, -48(%ebp) 
mov -48(%ebp), %edx
mov -44(%ebp), %eax
mov %edx, %eax
mov %edx, -48(%ebp) 
mov %eax, -44(%ebp) 
#IN CONST
mov -60(%ebp), %edx
mov $1, %edx
mov %edx, -60(%ebp) 
mov -60(%ebp), %edx
mov -44(%ebp), %eax
sub %edx, %eax
mov %edx, -60(%ebp) 
mov %eax, -44(%ebp) 
mov -44(%ebp), %edx
mov -4(%ebp), %eax
mov %edx, %eax
mov %edx, -44(%ebp) 
mov %eax, -4(%ebp) 
#IN CJUMP
#IN MEM
mov -72(%ebp), %edx
mov %ebp, %edx
mov %edx, -72(%ebp) 
#IN CONST
mov -76(%ebp), %edx
mov $16, %edx
mov %edx, -76(%ebp) 
mov -76(%ebp), %edx
mov -72(%ebp), %eax
add %edx, %eax
mov %edx, -76(%ebp) 
mov %eax, -72(%ebp) 
mov -72(%ebp), %edx
mov -68(%ebp), %eax
mov (%edx), %eax
mov %edx, -72(%ebp) 
mov %eax, -68(%ebp) 
mov -68(%ebp), %edx
mov -64(%ebp), %eax
mov %edx, %eax
mov %edx, -68(%ebp) 
mov %eax, -64(%ebp) 
#IN CONST
mov -80(%ebp), %edx
mov $1, %edx
mov %edx, -80(%ebp) 
mov -80(%ebp), %edx
mov -64(%ebp), %eax
sub %edx, %eax
mov %edx, -80(%ebp) 
mov %eax, -64(%ebp) 
#IN CONST
mov -84(%ebp), %edx
mov $0, %edx
mov %edx, -84(%ebp) 
mov -64(%ebp), %edx
mov -84(%ebp), %eax
cmp %edx, %eax
mov %edx, -64(%ebp) 
mov %eax, -84(%ebp) 
jle L69
L71:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN CONST
mov -92(%ebp), %edx
mov $4, %edx
mov %edx, -92(%ebp) 
mov -92(%ebp), %edx
push %edx
mov %edx, -92(%ebp) 
#IN CONST
mov -96(%ebp), %edx
mov $4, %edx
mov %edx, -96(%ebp) 
mov -96(%ebp), %edx
push %edx
mov %edx, -96(%ebp) 
mov -12(%ebp), %edx
push %edx
mov %edx, -12(%ebp) 
#IN MEM
mov -104(%ebp), %edx
mov %ebp, %edx
mov %edx, -104(%ebp) 
#IN CONST
mov -108(%ebp), %edx
mov $8, %edx
mov %edx, -108(%ebp) 
mov -108(%ebp), %edx
mov -104(%ebp), %eax
add %edx, %eax
mov %edx, -108(%ebp) 
mov %eax, -104(%ebp) 
mov -104(%ebp), %edx
mov -100(%ebp), %eax
mov (%edx), %eax
mov %edx, -104(%ebp) 
mov %eax, -100(%ebp) 
mov -100(%ebp), %edx
push %edx
mov %edx, -100(%ebp) 
call L3
add $16, %esp
pop %edx
pop %ecx
mov -88(%ebp), %edx
mov %eax, %edx
mov %edx, -88(%ebp) 
pop %eax
mov -88(%ebp), %edx
mov %edx, %eax
mov %edx, -88(%ebp) 
jmp L87
L69:
#IN REGMOVE
#IN CONST
mov -112(%ebp), %edx
mov $0, %edx
mov %edx, -112(%ebp) 
mov -112(%ebp), %edx
mov -436(%ebp), %eax
mov %edx, %eax
mov %edx, -112(%ebp) 
mov %eax, -436(%ebp) 
#IN REGMOVE
#IN MEM
mov -124(%ebp), %edx
mov %ebp, %edx
mov %edx, -124(%ebp) 
#IN CONST
mov -128(%ebp), %edx
mov $32, %edx
mov %edx, -128(%ebp) 
mov -128(%ebp), %edx
mov -124(%ebp), %eax
add %edx, %eax
mov %edx, -128(%ebp) 
mov %eax, -124(%ebp) 
mov -124(%ebp), %edx
mov -120(%ebp), %eax
mov (%edx), %eax
mov %edx, -124(%ebp) 
mov %eax, -120(%ebp) 
mov -120(%ebp), %edx
mov -116(%ebp), %eax
mov %edx, %eax
mov %edx, -120(%ebp) 
mov %eax, -116(%ebp) 
#IN CONST
mov -132(%ebp), %edx
mov $1, %edx
mov %edx, -132(%ebp) 
mov -132(%ebp), %edx
mov -116(%ebp), %eax
sub %edx, %eax
mov %edx, -132(%ebp) 
mov %eax, -116(%ebp) 
mov -116(%ebp), %edx
mov -424(%ebp), %eax
mov %edx, %eax
mov %edx, -116(%ebp) 
mov %eax, -424(%ebp) 
#IN CJUMP
#IN MEM
mov -144(%ebp), %edx
mov %ebp, %edx
mov %edx, -144(%ebp) 
#IN CONST
mov -148(%ebp), %edx
mov $32, %edx
mov %edx, -148(%ebp) 
mov -148(%ebp), %edx
mov -144(%ebp), %eax
add %edx, %eax
mov %edx, -148(%ebp) 
mov %eax, -144(%ebp) 
mov -144(%ebp), %edx
mov -140(%ebp), %eax
mov (%edx), %eax
mov %edx, -144(%ebp) 
mov %eax, -140(%ebp) 
mov -140(%ebp), %edx
mov -136(%ebp), %eax
mov %edx, %eax
mov %edx, -140(%ebp) 
mov %eax, -136(%ebp) 
#IN CONST
mov -152(%ebp), %edx
mov $1, %edx
mov %edx, -152(%ebp) 
mov -152(%ebp), %edx
mov -136(%ebp), %eax
sub %edx, %eax
mov %edx, -152(%ebp) 
mov %eax, -136(%ebp) 
#IN CONST
mov -156(%ebp), %edx
mov $0, %edx
mov %edx, -156(%ebp) 
mov -136(%ebp), %edx
mov -156(%ebp), %eax
cmp %edx, %eax
mov %edx, -136(%ebp) 
mov %eax, -156(%ebp) 
jle L64
L66:
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov -160(%ebp), %edx
mov $L68, %edx
mov %edx, -160(%ebp) 
mov -160(%ebp), %edx
push %edx
mov %edx, -160(%ebp) 
call print
add $4, %esp
pop %edx
pop %ecx
mov %eax, %ecx
pop %eax
#IN CJUMP
mov -4(%ebp), %edx
mov -8(%ebp), %eax
cmp %edx, %eax
mov %edx, -4(%ebp) 
mov %eax, -8(%ebp) 
jge L71
L72:
#IN REGMOVE
mov -8(%ebp), %edx
mov %edx, %ebx
mov %edx, -8(%ebp) 
#IN CONST
mov $1, %esi
add %esi, %ebx
mov -8(%ebp), %edx
mov %ebx, %edx
mov %edx, -8(%ebp) 
jmp L69
L64:
#IN MEM MOVE
#IN MEM
mov -12(%ebp), %edx
mov -168(%ebp), %eax
mov %edx, %eax
mov %edx, -12(%ebp) 
mov %eax, -168(%ebp) 
mov -8(%ebp), %edx
mov -172(%ebp), %eax
mov %edx, %eax
mov %edx, -8(%ebp) 
mov %eax, -172(%ebp) 
#IN CONST
mov -176(%ebp), %edx
mov $4, %edx
mov %edx, -176(%ebp) 
mov -176(%ebp), %edx
mov -172(%ebp), %eax
imul %edx, %eax
mov %edx, -176(%ebp) 
mov %eax, -172(%ebp) 
mov -172(%ebp), %edx
mov -168(%ebp), %eax
add %edx, %eax
mov %edx, -172(%ebp) 
mov %eax, -168(%ebp) 
mov -168(%ebp), %edx
mov -164(%ebp), %eax
mov (%edx), %eax
mov %edx, -168(%ebp) 
mov %eax, -164(%ebp) 
mov -164(%ebp), %edx
mov %edx, %ecx
mov %edx, -164(%ebp) 
mov -436(%ebp), %edx
mov -180(%ebp), %eax
mov %edx, %eax
mov %edx, -436(%ebp) 
mov %eax, -180(%ebp) 
#IN CONST
mov -184(%ebp), %edx
mov $4, %edx
mov %edx, -184(%ebp) 
mov -184(%ebp), %edx
mov -180(%ebp), %eax
imul %edx, %eax
mov %edx, -184(%ebp) 
mov %eax, -180(%ebp) 
mov -180(%ebp), %edx
add %edx, %ecx
mov %edx, -180(%ebp) 
#IN CONST
mov -188(%ebp), %edx
mov $0, %edx
mov %edx, -188(%ebp) 
mov -188(%ebp), %edx
mov %edx, (%ecx)
mov %edx, -188(%ebp) 
#IN REGMOVE
#IN CONST
mov -192(%ebp), %edx
mov $0, %edx
mov %edx, -192(%ebp) 
mov -192(%ebp), %edx
mov -432(%ebp), %eax
mov %edx, %eax
mov %edx, -192(%ebp) 
mov %eax, -432(%ebp) 
#IN REGMOVE
#IN MEM
mov -200(%ebp), %edx
mov %ebp, %edx
mov %edx, -200(%ebp) 
#IN CONST
mov -204(%ebp), %edx
mov $20, %edx
mov %edx, -204(%ebp) 
mov -204(%ebp), %edx
mov -200(%ebp), %eax
add %edx, %eax
mov %edx, -204(%ebp) 
mov %eax, -200(%ebp) 
mov -200(%ebp), %edx
mov -196(%ebp), %eax
mov (%edx), %eax
mov %edx, -200(%ebp) 
mov %eax, -196(%ebp) 
mov -196(%ebp), %edx
mov -428(%ebp), %eax
mov %edx, %eax
mov %edx, -196(%ebp) 
mov %eax, -428(%ebp) 
#IN CJUMP
#IN MEM
mov -212(%ebp), %edx
mov %ebp, %edx
mov %edx, -212(%ebp) 
#IN CONST
mov -216(%ebp), %edx
mov $20, %edx
mov %edx, -216(%ebp) 
mov -216(%ebp), %edx
mov -212(%ebp), %eax
add %edx, %eax
mov %edx, -216(%ebp) 
mov %eax, -212(%ebp) 
mov -212(%ebp), %edx
mov -208(%ebp), %eax
mov (%edx), %eax
mov %edx, -212(%ebp) 
mov %eax, -208(%ebp) 
#IN CONST
mov -220(%ebp), %edx
mov $0, %edx
mov %edx, -220(%ebp) 
mov -208(%ebp), %edx
mov -220(%ebp), %eax
cmp %edx, %eax
mov %edx, -208(%ebp) 
mov %eax, -220(%ebp) 
jle L57
L59:
#IN CALL
push %eax
push %ecx
push %edx
#IN MEM
#IN MEM
mov -12(%ebp), %edx
mov -236(%ebp), %eax
mov %edx, %eax
mov %edx, -12(%ebp) 
mov %eax, -236(%ebp) 
mov -8(%ebp), %edx
mov -240(%ebp), %eax
mov %edx, %eax
mov %edx, -8(%ebp) 
mov %eax, -240(%ebp) 
#IN CONST
mov -244(%ebp), %edx
mov $4, %edx
mov %edx, -244(%ebp) 
mov -244(%ebp), %edx
mov -240(%ebp), %eax
imul %edx, %eax
mov %edx, -244(%ebp) 
mov %eax, -240(%ebp) 
mov -240(%ebp), %edx
mov -236(%ebp), %eax
add %edx, %eax
mov %edx, -240(%ebp) 
mov %eax, -236(%ebp) 
mov -236(%ebp), %edx
mov -232(%ebp), %eax
mov (%edx), %eax
mov %edx, -236(%ebp) 
mov %eax, -232(%ebp) 
mov -232(%ebp), %edx
mov -228(%ebp), %eax
mov %edx, %eax
mov %edx, -232(%ebp) 
mov %eax, -228(%ebp) 
mov -436(%ebp), %edx
mov -248(%ebp), %eax
mov %edx, %eax
mov %edx, -436(%ebp) 
mov %eax, -248(%ebp) 
#IN CONST
mov -252(%ebp), %edx
mov $4, %edx
mov %edx, -252(%ebp) 
mov -252(%ebp), %edx
mov -248(%ebp), %eax
imul %edx, %eax
mov %edx, -252(%ebp) 
mov %eax, -248(%ebp) 
mov -248(%ebp), %edx
mov -228(%ebp), %eax
add %edx, %eax
mov %edx, -248(%ebp) 
mov %eax, -228(%ebp) 
mov -228(%ebp), %edx
mov -224(%ebp), %eax
mov (%edx), %eax
mov %edx, -228(%ebp) 
mov %eax, -224(%ebp) 
mov -224(%ebp), %edx
push %edx
mov %edx, -224(%ebp) 
#IN MEM
mov -260(%ebp), %edx
mov %ebp, %edx
mov %edx, -260(%ebp) 
#IN CONST
mov -264(%ebp), %edx
mov $8, %edx
mov %edx, -264(%ebp) 
mov -264(%ebp), %edx
mov -260(%ebp), %eax
add %edx, %eax
mov %edx, -264(%ebp) 
mov %eax, -260(%ebp) 
mov -260(%ebp), %edx
mov -256(%ebp), %eax
mov (%edx), %eax
mov %edx, -260(%ebp) 
mov %eax, -256(%ebp) 
mov -256(%ebp), %edx
push %edx
mov %edx, -256(%ebp) 
call L1
add $8, %esp
pop %edx
pop %ecx
mov %eax, %esi
pop %eax
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov -268(%ebp), %edx
mov $L63, %edx
mov %edx, -268(%ebp) 
mov -268(%ebp), %edx
push %edx
mov %edx, -268(%ebp) 
call print
add $4, %esp
pop %edx
pop %ecx
mov %eax, %ebx
pop %eax
#IN CJUMP
mov -424(%ebp), %edx
mov -436(%ebp), %eax
cmp %edx, %eax
mov %edx, -424(%ebp) 
mov %eax, -436(%ebp) 
jge L66
L67:
#IN REGMOVE
mov -436(%ebp), %edx
mov %edx, %ecx
mov %edx, -436(%ebp) 
#IN CONST
mov $1, %edi
add %edi, %ecx
mov -436(%ebp), %edx
mov %ecx, %edx
mov %edx, -436(%ebp) 
jmp L64
L57:
#IN MEM MOVE
#IN MEM
mov -12(%ebp), %edx
mov -276(%ebp), %eax
mov %edx, %eax
mov %edx, -12(%ebp) 
mov %eax, -276(%ebp) 
mov -8(%ebp), %edx
mov -280(%ebp), %eax
mov %edx, %eax
mov %edx, -8(%ebp) 
mov %eax, -280(%ebp) 
#IN CONST
mov -284(%ebp), %edx
mov $4, %edx
mov %edx, -284(%ebp) 
mov -284(%ebp), %edx
mov -280(%ebp), %eax
imul %edx, %eax
mov %edx, -284(%ebp) 
mov %eax, -280(%ebp) 
mov -280(%ebp), %edx
mov -276(%ebp), %eax
add %edx, %eax
mov %edx, -280(%ebp) 
mov %eax, -276(%ebp) 
mov -276(%ebp), %edx
mov -272(%ebp), %eax
mov (%edx), %eax
mov %edx, -276(%ebp) 
mov %eax, -272(%ebp) 
mov -272(%ebp), %edx
mov %edx, %ebx
mov %edx, -272(%ebp) 
mov -436(%ebp), %edx
mov -288(%ebp), %eax
mov %edx, %eax
mov %edx, -436(%ebp) 
mov %eax, -288(%ebp) 
#IN CONST
mov -292(%ebp), %edx
mov $4, %edx
mov %edx, -292(%ebp) 
mov -292(%ebp), %edx
mov -288(%ebp), %eax
imul %edx, %eax
mov %edx, -292(%ebp) 
mov %eax, -288(%ebp) 
mov -288(%ebp), %edx
add %edx, %ebx
mov %edx, -288(%ebp) 
#IN MEM
#IN MEM
mov -12(%ebp), %edx
mov -312(%ebp), %eax
mov %edx, %eax
mov %edx, -12(%ebp) 
mov %eax, -312(%ebp) 
mov -8(%ebp), %edx
mov -316(%ebp), %eax
mov %edx, %eax
mov %edx, -8(%ebp) 
mov %eax, -316(%ebp) 
#IN CONST
mov -320(%ebp), %edx
mov $4, %edx
mov %edx, -320(%ebp) 
mov -320(%ebp), %edx
mov -316(%ebp), %eax
imul %edx, %eax
mov %edx, -320(%ebp) 
mov %eax, -316(%ebp) 
mov -316(%ebp), %edx
mov -312(%ebp), %eax
add %edx, %eax
mov %edx, -316(%ebp) 
mov %eax, -312(%ebp) 
mov -312(%ebp), %edx
mov -308(%ebp), %eax
mov (%edx), %eax
mov %edx, -312(%ebp) 
mov %eax, -308(%ebp) 
mov -308(%ebp), %edx
mov -304(%ebp), %eax
mov %edx, %eax
mov %edx, -308(%ebp) 
mov %eax, -304(%ebp) 
mov -436(%ebp), %edx
mov -324(%ebp), %eax
mov %edx, %eax
mov %edx, -436(%ebp) 
mov %eax, -324(%ebp) 
#IN CONST
mov -328(%ebp), %edx
mov $4, %edx
mov %edx, -328(%ebp) 
mov -328(%ebp), %edx
mov -324(%ebp), %eax
imul %edx, %eax
mov %edx, -328(%ebp) 
mov %eax, -324(%ebp) 
mov -324(%ebp), %edx
mov -304(%ebp), %eax
add %edx, %eax
mov %edx, -324(%ebp) 
mov %eax, -304(%ebp) 
mov -304(%ebp), %edx
mov -300(%ebp), %eax
mov (%edx), %eax
mov %edx, -304(%ebp) 
mov %eax, -300(%ebp) 
mov -300(%ebp), %edx
mov -296(%ebp), %eax
mov %edx, %eax
mov %edx, -300(%ebp) 
mov %eax, -296(%ebp) 
#IN MEM
#IN MEM
#IN MEM
mov -356(%ebp), %edx
mov %ebp, %edx
mov %edx, -356(%ebp) 
#IN CONST
mov -360(%ebp), %edx
mov $12, %edx
mov %edx, -360(%ebp) 
mov -360(%ebp), %edx
mov -356(%ebp), %eax
add %edx, %eax
mov %edx, -360(%ebp) 
mov %eax, -356(%ebp) 
mov -356(%ebp), %edx
mov -352(%ebp), %eax
mov (%edx), %eax
mov %edx, -356(%ebp) 
mov %eax, -352(%ebp) 
mov -352(%ebp), %edx
mov -348(%ebp), %eax
mov %edx, %eax
mov %edx, -352(%ebp) 
mov %eax, -348(%ebp) 
mov -8(%ebp), %edx
mov -364(%ebp), %eax
mov %edx, %eax
mov %edx, -8(%ebp) 
mov %eax, -364(%ebp) 
#IN CONST
mov -368(%ebp), %edx
mov $4, %edx
mov %edx, -368(%ebp) 
mov -368(%ebp), %edx
mov -364(%ebp), %eax
imul %edx, %eax
mov %edx, -368(%ebp) 
mov %eax, -364(%ebp) 
mov -364(%ebp), %edx
mov -348(%ebp), %eax
add %edx, %eax
mov %edx, -364(%ebp) 
mov %eax, -348(%ebp) 
mov -348(%ebp), %edx
mov -344(%ebp), %eax
mov (%edx), %eax
mov %edx, -348(%ebp) 
mov %eax, -344(%ebp) 
mov -344(%ebp), %edx
mov -340(%ebp), %eax
mov %edx, %eax
mov %edx, -344(%ebp) 
mov %eax, -340(%ebp) 
mov -432(%ebp), %edx
mov -372(%ebp), %eax
mov %edx, %eax
mov %edx, -432(%ebp) 
mov %eax, -372(%ebp) 
#IN CONST
mov -376(%ebp), %edx
mov $4, %edx
mov %edx, -376(%ebp) 
mov -376(%ebp), %edx
mov -372(%ebp), %eax
imul %edx, %eax
mov %edx, -376(%ebp) 
mov %eax, -372(%ebp) 
mov -372(%ebp), %edx
mov -340(%ebp), %eax
add %edx, %eax
mov %edx, -372(%ebp) 
mov %eax, -340(%ebp) 
mov -340(%ebp), %edx
mov -336(%ebp), %eax
mov (%edx), %eax
mov %edx, -340(%ebp) 
mov %eax, -336(%ebp) 
mov -336(%ebp), %edx
mov -332(%ebp), %eax
mov %edx, %eax
mov %edx, -336(%ebp) 
mov %eax, -332(%ebp) 
#IN MEM
#IN MEM
#IN MEM
mov -400(%ebp), %edx
mov %ebp, %edx
mov %edx, -400(%ebp) 
#IN CONST
mov -404(%ebp), %edx
mov $24, %edx
mov %edx, -404(%ebp) 
mov -404(%ebp), %edx
mov -400(%ebp), %eax
add %edx, %eax
mov %edx, -404(%ebp) 
mov %eax, -400(%ebp) 
mov -400(%ebp), %edx
mov -396(%ebp), %eax
mov (%edx), %eax
mov %edx, -400(%ebp) 
mov %eax, -396(%ebp) 
mov -396(%ebp), %edx
mov -392(%ebp), %eax
mov %edx, %eax
mov %edx, -396(%ebp) 
mov %eax, -392(%ebp) 
mov -432(%ebp), %edx
mov -408(%ebp), %eax
mov %edx, %eax
mov %edx, -432(%ebp) 
mov %eax, -408(%ebp) 
#IN CONST
mov -412(%ebp), %edx
mov $4, %edx
mov %edx, -412(%ebp) 
mov -412(%ebp), %edx
mov -408(%ebp), %eax
imul %edx, %eax
mov %edx, -412(%ebp) 
mov %eax, -408(%ebp) 
mov -408(%ebp), %edx
mov -392(%ebp), %eax
add %edx, %eax
mov %edx, -408(%ebp) 
mov %eax, -392(%ebp) 
mov -392(%ebp), %edx
mov -388(%ebp), %eax
mov (%edx), %eax
mov %edx, -392(%ebp) 
mov %eax, -388(%ebp) 
mov -388(%ebp), %edx
mov -384(%ebp), %eax
mov %edx, %eax
mov %edx, -388(%ebp) 
mov %eax, -384(%ebp) 
mov -436(%ebp), %edx
mov -416(%ebp), %eax
mov %edx, %eax
mov %edx, -436(%ebp) 
mov %eax, -416(%ebp) 
#IN CONST
mov -420(%ebp), %edx
mov $4, %edx
mov %edx, -420(%ebp) 
mov -420(%ebp), %edx
mov -416(%ebp), %eax
imul %edx, %eax
mov %edx, -420(%ebp) 
mov %eax, -416(%ebp) 
mov -416(%ebp), %edx
mov -384(%ebp), %eax
add %edx, %eax
mov %edx, -416(%ebp) 
mov %eax, -384(%ebp) 
mov -384(%ebp), %edx
mov -380(%ebp), %eax
mov (%edx), %eax
mov %edx, -384(%ebp) 
mov %eax, -380(%ebp) 
mov -380(%ebp), %edx
mov -332(%ebp), %eax
imul %edx, %eax
mov %edx, -380(%ebp) 
mov %eax, -332(%ebp) 
mov -332(%ebp), %edx
mov -296(%ebp), %eax
add %edx, %eax
mov %edx, -332(%ebp) 
mov %eax, -296(%ebp) 
mov -296(%ebp), %edx
mov %edx, (%ebx)
mov %edx, -296(%ebp) 
#IN CJUMP
mov -428(%ebp), %edx
mov -432(%ebp), %eax
cmp %edx, %eax
mov %edx, -428(%ebp) 
mov %eax, -432(%ebp) 
jge L59
L60:
#IN REGMOVE
mov -432(%ebp), %edx
mov %edx, %edi
mov %edx, -432(%ebp) 
#IN CONST
mov $1, %ecx
add %ecx, %edi
mov -432(%ebp), %edx
mov %edi, %edx
mov %edx, -432(%ebp) 
jmp L57
L87:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L3:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $180, %esp
push %ebx
push %edi
push %esi
L91:
#IN REGMOVE
#IN CONST
mov $0, %esi
mov -8(%ebp), %edx
mov %esi, %edx
mov %edx, -8(%ebp) 
#IN REGMOVE
#IN MEM
mov %ebp, %ebx
#IN CONST
mov -12(%ebp), %edx
mov $16, %edx
mov %edx, -12(%ebp) 
mov -12(%ebp), %edx
add %edx, %ebx
mov %edx, -12(%ebp) 
mov (%ebx), %edi
mov %edi, %ecx
#IN CONST
mov -16(%ebp), %edx
mov $1, %edx
mov %edx, -16(%ebp) 
mov -16(%ebp), %edx
sub %edx, %ecx
mov %edx, -16(%ebp) 
mov -4(%ebp), %edx
mov %ecx, %edx
mov %edx, -4(%ebp) 
#IN CJUMP
#IN MEM
mov -28(%ebp), %edx
mov %ebp, %edx
mov %edx, -28(%ebp) 
#IN CONST
mov -32(%ebp), %edx
mov $16, %edx
mov %edx, -32(%ebp) 
mov -32(%ebp), %edx
mov -28(%ebp), %eax
add %edx, %eax
mov %edx, -32(%ebp) 
mov %eax, -28(%ebp) 
mov -28(%ebp), %edx
mov -24(%ebp), %eax
mov (%edx), %eax
mov %edx, -28(%ebp) 
mov %eax, -24(%ebp) 
mov -24(%ebp), %edx
mov -20(%ebp), %eax
mov %edx, %eax
mov %edx, -24(%ebp) 
mov %eax, -20(%ebp) 
#IN CONST
mov -36(%ebp), %edx
mov $1, %edx
mov %edx, -36(%ebp) 
mov -36(%ebp), %edx
mov -20(%ebp), %eax
sub %edx, %eax
mov %edx, -36(%ebp) 
mov %eax, -20(%ebp) 
#IN CONST
mov -40(%ebp), %edx
mov $0, %edx
mov %edx, -40(%ebp) 
mov -20(%ebp), %edx
mov -40(%ebp), %eax
cmp %edx, %eax
mov %edx, -20(%ebp) 
mov %eax, -40(%ebp) 
jle L40
L42:
#IN REGMOVE
#IN CONST
mov -44(%ebp), %edx
mov $0, %edx
mov %edx, -44(%ebp) 
mov -44(%ebp), %edx
mov %edx, %eax
mov %edx, -44(%ebp) 
jmp L90
L40:
#IN REGMOVE
#IN CONST
mov -48(%ebp), %edx
mov $0, %edx
mov %edx, -48(%ebp) 
mov -48(%ebp), %edx
mov -176(%ebp), %eax
mov %edx, %eax
mov %edx, -48(%ebp) 
mov %eax, -176(%ebp) 
#IN REGMOVE
#IN MEM
mov -60(%ebp), %edx
mov %ebp, %edx
mov %edx, -60(%ebp) 
#IN CONST
mov -64(%ebp), %edx
mov $20, %edx
mov %edx, -64(%ebp) 
mov -64(%ebp), %edx
mov -60(%ebp), %eax
add %edx, %eax
mov %edx, -64(%ebp) 
mov %eax, -60(%ebp) 
mov -60(%ebp), %edx
mov -56(%ebp), %eax
mov (%edx), %eax
mov %edx, -60(%ebp) 
mov %eax, -56(%ebp) 
mov -56(%ebp), %edx
mov -52(%ebp), %eax
mov %edx, %eax
mov %edx, -56(%ebp) 
mov %eax, -52(%ebp) 
#IN CONST
mov -68(%ebp), %edx
mov $1, %edx
mov %edx, -68(%ebp) 
mov -68(%ebp), %edx
mov -52(%ebp), %eax
sub %edx, %eax
mov %edx, -68(%ebp) 
mov %eax, -52(%ebp) 
mov -52(%ebp), %edx
mov -172(%ebp), %eax
mov %edx, %eax
mov %edx, -52(%ebp) 
mov %eax, -172(%ebp) 
#IN CJUMP
#IN MEM
mov -80(%ebp), %edx
mov %ebp, %edx
mov %edx, -80(%ebp) 
#IN CONST
mov -84(%ebp), %edx
mov $20, %edx
mov %edx, -84(%ebp) 
mov -84(%ebp), %edx
mov -80(%ebp), %eax
add %edx, %eax
mov %edx, -84(%ebp) 
mov %eax, -80(%ebp) 
mov -80(%ebp), %edx
mov -76(%ebp), %eax
mov (%edx), %eax
mov %edx, -80(%ebp) 
mov %eax, -76(%ebp) 
mov -76(%ebp), %edx
mov -72(%ebp), %eax
mov %edx, %eax
mov %edx, -76(%ebp) 
mov %eax, -72(%ebp) 
#IN CONST
mov -88(%ebp), %edx
mov $1, %edx
mov %edx, -88(%ebp) 
mov -88(%ebp), %edx
mov -72(%ebp), %eax
sub %edx, %eax
mov %edx, -88(%ebp) 
mov %eax, -72(%ebp) 
#IN CONST
mov -92(%ebp), %edx
mov $0, %edx
mov %edx, -92(%ebp) 
mov -72(%ebp), %edx
mov -92(%ebp), %eax
cmp %edx, %eax
mov %edx, -72(%ebp) 
mov %eax, -92(%ebp) 
jle L35
L37:
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov -96(%ebp), %edx
mov $L39, %edx
mov %edx, -96(%ebp) 
mov -96(%ebp), %edx
push %edx
mov %edx, -96(%ebp) 
call print
add $4, %esp
pop %edx
pop %ecx
mov %eax, %ecx
pop %eax
#IN CJUMP
mov -4(%ebp), %edx
mov -8(%ebp), %eax
cmp %edx, %eax
mov %edx, -4(%ebp) 
mov %eax, -8(%ebp) 
jge L42
L43:
#IN REGMOVE
mov -8(%ebp), %edx
mov %edx, %esi
mov %edx, -8(%ebp) 
#IN CONST
mov $1, %edi
add %edi, %esi
mov -8(%ebp), %edx
mov %esi, %edx
mov %edx, -8(%ebp) 
jmp L40
L35:
#IN CALL
push %eax
push %ecx
push %edx
#IN MEM
#IN MEM
#IN MEM
#IN MEM
mov -128(%ebp), %edx
mov %ebp, %edx
mov %edx, -128(%ebp) 
#IN CONST
mov -132(%ebp), %edx
mov $8, %edx
mov %edx, -132(%ebp) 
mov -132(%ebp), %edx
mov -128(%ebp), %eax
add %edx, %eax
mov %edx, -132(%ebp) 
mov %eax, -128(%ebp) 
mov -128(%ebp), %edx
mov -124(%ebp), %eax
mov (%edx), %eax
mov %edx, -128(%ebp) 
mov %eax, -124(%ebp) 
mov -124(%ebp), %edx
mov -120(%ebp), %eax
mov %edx, %eax
mov %edx, -124(%ebp) 
mov %eax, -120(%ebp) 
#IN CONST
mov -136(%ebp), %edx
mov $-4, %edx
mov %edx, -136(%ebp) 
mov -136(%ebp), %edx
mov -120(%ebp), %eax
add %edx, %eax
mov %edx, -136(%ebp) 
mov %eax, -120(%ebp) 
mov -120(%ebp), %edx
mov -116(%ebp), %eax
mov (%edx), %eax
mov %edx, -120(%ebp) 
mov %eax, -116(%ebp) 
mov -116(%ebp), %edx
mov -112(%ebp), %eax
mov %edx, %eax
mov %edx, -116(%ebp) 
mov %eax, -112(%ebp) 
mov -8(%ebp), %edx
mov -140(%ebp), %eax
mov %edx, %eax
mov %edx, -8(%ebp) 
mov %eax, -140(%ebp) 
#IN CONST
mov -144(%ebp), %edx
mov $4, %edx
mov %edx, -144(%ebp) 
mov -144(%ebp), %edx
mov -140(%ebp), %eax
imul %edx, %eax
mov %edx, -144(%ebp) 
mov %eax, -140(%ebp) 
mov -140(%ebp), %edx
mov -112(%ebp), %eax
add %edx, %eax
mov %edx, -140(%ebp) 
mov %eax, -112(%ebp) 
mov -112(%ebp), %edx
mov -108(%ebp), %eax
mov (%edx), %eax
mov %edx, -112(%ebp) 
mov %eax, -108(%ebp) 
mov -108(%ebp), %edx
mov -104(%ebp), %eax
mov %edx, %eax
mov %edx, -108(%ebp) 
mov %eax, -104(%ebp) 
mov -176(%ebp), %edx
mov -148(%ebp), %eax
mov %edx, %eax
mov %edx, -176(%ebp) 
mov %eax, -148(%ebp) 
#IN CONST
mov -152(%ebp), %edx
mov $4, %edx
mov %edx, -152(%ebp) 
mov -152(%ebp), %edx
mov -148(%ebp), %eax
imul %edx, %eax
mov %edx, -152(%ebp) 
mov %eax, -148(%ebp) 
mov -148(%ebp), %edx
mov -104(%ebp), %eax
add %edx, %eax
mov %edx, -148(%ebp) 
mov %eax, -104(%ebp) 
mov -104(%ebp), %edx
mov -100(%ebp), %eax
mov (%edx), %eax
mov %edx, -104(%ebp) 
mov %eax, -100(%ebp) 
mov -100(%ebp), %edx
push %edx
mov %edx, -100(%ebp) 
#IN MEM
mov -160(%ebp), %edx
mov %ebp, %edx
mov %edx, -160(%ebp) 
#IN CONST
mov -164(%ebp), %edx
mov $8, %edx
mov %edx, -164(%ebp) 
mov -164(%ebp), %edx
mov -160(%ebp), %eax
add %edx, %eax
mov %edx, -164(%ebp) 
mov %eax, -160(%ebp) 
mov -160(%ebp), %edx
mov -156(%ebp), %eax
mov (%edx), %eax
mov %edx, -160(%ebp) 
mov %eax, -156(%ebp) 
mov -156(%ebp), %edx
push %edx
mov %edx, -156(%ebp) 
call L1
add $8, %esp
pop %edx
pop %ecx
mov %eax, %ecx
pop %eax
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov -168(%ebp), %edx
mov $L34, %edx
mov %edx, -168(%ebp) 
mov -168(%ebp), %edx
push %edx
mov %edx, -168(%ebp) 
call print
add $4, %esp
pop %edx
pop %ecx
mov %eax, %ebx
pop %eax
#IN CJUMP
mov -172(%ebp), %edx
mov -176(%ebp), %eax
cmp %edx, %eax
mov %edx, -172(%ebp) 
mov %eax, -176(%ebp) 
jge L37
L38:
#IN REGMOVE
mov -176(%ebp), %edx
mov %edx, %edi
mov %edx, -176(%ebp) 
#IN CONST
mov $1, %esi
add %esi, %edi
mov -176(%ebp), %edx
mov %edi, %edx
mov %edx, -176(%ebp) 
jmp L35
L90:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L2:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $136, %esp
push %ebx
push %edi
push %esi
L94:
#IN REGMOVE
#IN CONST
mov $0, %esi
mov -8(%ebp), %edx
mov %esi, %edx
mov %edx, -8(%ebp) 
#IN REGMOVE
#IN MEM
mov %ebp, %ebx
#IN CONST
mov -12(%ebp), %edx
mov $16, %edx
mov %edx, -12(%ebp) 
mov -12(%ebp), %edx
add %edx, %ebx
mov %edx, -12(%ebp) 
mov (%ebx), %edi
mov %edi, %ecx
#IN CONST
mov -16(%ebp), %edx
mov $1, %edx
mov %edx, -16(%ebp) 
mov -16(%ebp), %edx
sub %edx, %ecx
mov %edx, -16(%ebp) 
mov -4(%ebp), %edx
mov %ecx, %edx
mov %edx, -4(%ebp) 
#IN CJUMP
#IN MEM
mov -28(%ebp), %edx
mov %ebp, %edx
mov %edx, -28(%ebp) 
#IN CONST
mov -32(%ebp), %edx
mov $16, %edx
mov %edx, -32(%ebp) 
mov -32(%ebp), %edx
mov -28(%ebp), %eax
add %edx, %eax
mov %edx, -32(%ebp) 
mov %eax, -28(%ebp) 
mov -28(%ebp), %edx
mov -24(%ebp), %eax
mov (%edx), %eax
mov %edx, -28(%ebp) 
mov %eax, -24(%ebp) 
mov -24(%ebp), %edx
mov -20(%ebp), %eax
mov %edx, %eax
mov %edx, -24(%ebp) 
mov %eax, -20(%ebp) 
#IN CONST
mov -36(%ebp), %edx
mov $1, %edx
mov %edx, -36(%ebp) 
mov -36(%ebp), %edx
mov -20(%ebp), %eax
sub %edx, %eax
mov %edx, -36(%ebp) 
mov %eax, -20(%ebp) 
#IN CONST
mov -40(%ebp), %edx
mov $0, %edx
mov %edx, -40(%ebp) 
mov -20(%ebp), %edx
mov -40(%ebp), %eax
cmp %edx, %eax
mov %edx, -20(%ebp) 
mov %eax, -40(%ebp) 
jle L26
L28:
#IN REGMOVE
#IN CONST
mov -44(%ebp), %edx
mov $0, %edx
mov %edx, -44(%ebp) 
mov -44(%ebp), %edx
mov %edx, %eax
mov %edx, -44(%ebp) 
jmp L93
L26:
#IN REGMOVE
#IN CONST
mov -48(%ebp), %edx
mov $0, %edx
mov %edx, -48(%ebp) 
mov -48(%ebp), %edx
mov %edx, %ebx
mov %edx, -48(%ebp) 
#IN REGMOVE
#IN MEM
mov -60(%ebp), %edx
mov %ebp, %edx
mov %edx, -60(%ebp) 
#IN CONST
mov -64(%ebp), %edx
mov $20, %edx
mov %edx, -64(%ebp) 
mov -64(%ebp), %edx
mov -60(%ebp), %eax
add %edx, %eax
mov %edx, -64(%ebp) 
mov %eax, -60(%ebp) 
mov -60(%ebp), %edx
mov -56(%ebp), %eax
mov (%edx), %eax
mov %edx, -60(%ebp) 
mov %eax, -56(%ebp) 
mov -56(%ebp), %edx
mov -52(%ebp), %eax
mov %edx, %eax
mov %edx, -56(%ebp) 
mov %eax, -52(%ebp) 
#IN CONST
mov -68(%ebp), %edx
mov $1, %edx
mov %edx, -68(%ebp) 
mov -68(%ebp), %edx
mov -52(%ebp), %eax
sub %edx, %eax
mov %edx, -68(%ebp) 
mov %eax, -52(%ebp) 
mov -52(%ebp), %edx
mov -132(%ebp), %eax
mov %edx, %eax
mov %edx, -52(%ebp) 
mov %eax, -132(%ebp) 
#IN CJUMP
#IN MEM
mov -80(%ebp), %edx
mov %ebp, %edx
mov %edx, -80(%ebp) 
#IN CONST
mov -84(%ebp), %edx
mov $20, %edx
mov %edx, -84(%ebp) 
mov -84(%ebp), %edx
mov -80(%ebp), %eax
add %edx, %eax
mov %edx, -84(%ebp) 
mov %eax, -80(%ebp) 
mov -80(%ebp), %edx
mov -76(%ebp), %eax
mov (%edx), %eax
mov %edx, -80(%ebp) 
mov %eax, -76(%ebp) 
mov -76(%ebp), %edx
mov -72(%ebp), %eax
mov %edx, %eax
mov %edx, -76(%ebp) 
mov %eax, -72(%ebp) 
#IN CONST
mov -88(%ebp), %edx
mov $1, %edx
mov %edx, -88(%ebp) 
mov -88(%ebp), %edx
mov -72(%ebp), %eax
sub %edx, %eax
mov %edx, -88(%ebp) 
mov %eax, -72(%ebp) 
#IN CONST
mov -92(%ebp), %edx
mov $0, %edx
mov %edx, -92(%ebp) 
mov -72(%ebp), %edx
mov -92(%ebp), %eax
cmp %edx, %eax
mov %edx, -72(%ebp) 
mov %eax, -92(%ebp) 
jle L22
L24:
#IN CJUMP
mov -4(%ebp), %edx
mov -8(%ebp), %eax
cmp %edx, %eax
mov %edx, -4(%ebp) 
mov %eax, -8(%ebp) 
jge L28
L29:
#IN REGMOVE
mov -8(%ebp), %edx
mov %edx, %ecx
mov %edx, -8(%ebp) 
#IN CONST
mov $1, %esi
add %esi, %ecx
mov -8(%ebp), %edx
mov %ecx, %edx
mov %edx, -8(%ebp) 
jmp L26
L22:
#IN MEM MOVE
#IN MEM
#IN MEM
mov -108(%ebp), %edx
mov %ebp, %edx
mov %edx, -108(%ebp) 
#IN CONST
mov -112(%ebp), %edx
mov $12, %edx
mov %edx, -112(%ebp) 
mov -112(%ebp), %edx
mov -108(%ebp), %eax
add %edx, %eax
mov %edx, -112(%ebp) 
mov %eax, -108(%ebp) 
mov -108(%ebp), %edx
mov -104(%ebp), %eax
mov (%edx), %eax
mov %edx, -108(%ebp) 
mov %eax, -104(%ebp) 
mov -104(%ebp), %edx
mov -100(%ebp), %eax
mov %edx, %eax
mov %edx, -104(%ebp) 
mov %eax, -100(%ebp) 
mov -8(%ebp), %edx
mov -116(%ebp), %eax
mov %edx, %eax
mov %edx, -8(%ebp) 
mov %eax, -116(%ebp) 
#IN CONST
mov -120(%ebp), %edx
mov $4, %edx
mov %edx, -120(%ebp) 
mov -120(%ebp), %edx
mov -116(%ebp), %eax
imul %edx, %eax
mov %edx, -120(%ebp) 
mov %eax, -116(%ebp) 
mov -116(%ebp), %edx
mov -100(%ebp), %eax
add %edx, %eax
mov %edx, -116(%ebp) 
mov %eax, -100(%ebp) 
mov -100(%ebp), %edx
mov -96(%ebp), %eax
mov (%edx), %eax
mov %edx, -100(%ebp) 
mov %eax, -96(%ebp) 
mov -96(%ebp), %edx
mov %edx, %edi
mov %edx, -96(%ebp) 
mov -124(%ebp), %edx
mov %ebx, %edx
mov %edx, -124(%ebp) 
#IN CONST
mov -128(%ebp), %edx
mov $4, %edx
mov %edx, -128(%ebp) 
mov -128(%ebp), %edx
mov -124(%ebp), %eax
imul %edx, %eax
mov %edx, -128(%ebp) 
mov %eax, -124(%ebp) 
mov -124(%ebp), %edx
add %edx, %edi
mov %edx, -124(%ebp) 
mov %ebx, (%edi)
#IN CJUMP
mov -132(%ebp), %edx
cmp %edx, %ebx
mov %edx, -132(%ebp) 
jge L24
L25:
#IN REGMOVE
mov %ebx, %esi
#IN CONST
mov $1, %ecx
add %ecx, %esi
mov %esi, %ebx
jmp L22
L93:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L1:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $64, %esp
push %ebx
push %edi
push %esi
L97:
#IN CJUMP
#IN CONST
mov $0, %ebx
#IN MEM
mov %ebp, %esi
#IN CONST
mov $12, %ecx
add %ecx, %esi
mov (%esi), %edi
cmp %ebx, %edi
jl L15
L16:
#IN CJUMP
#IN CONST
mov -32(%ebp), %edx
mov $0, %edx
mov %edx, -32(%ebp) 
#IN MEM
mov -40(%ebp), %edx
mov %ebp, %edx
mov %edx, -40(%ebp) 
#IN CONST
mov -44(%ebp), %edx
mov $12, %edx
mov %edx, -44(%ebp) 
mov -44(%ebp), %edx
mov -40(%ebp), %eax
add %edx, %eax
mov %edx, -44(%ebp) 
mov %eax, -40(%ebp) 
mov -40(%ebp), %edx
mov -36(%ebp), %eax
mov (%edx), %eax
mov %edx, -40(%ebp) 
mov %eax, -36(%ebp) 
mov -32(%ebp), %edx
mov -36(%ebp), %eax
cmp %edx, %eax
mov %edx, -32(%ebp) 
mov %eax, -36(%ebp) 
jg L12
L13:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov $L11, %edi
push %edi
call print
add $4, %esp
pop %edx
pop %ecx
mov %eax, %esi
pop %eax
mov %esi, %ecx
L14:
mov %ecx, %ebx
L17:
mov %ebx, %eax
jmp L96
L15:
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov -4(%ebp), %edx
mov $L10, %edx
mov %edx, -4(%ebp) 
mov -4(%ebp), %edx
push %edx
mov %edx, -4(%ebp) 
call print
add $4, %esp
pop %edx
pop %ecx
mov %eax, %edi
pop %eax
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN CONST
mov -16(%ebp), %edx
mov $0, %edx
mov %edx, -16(%ebp) 
mov -16(%ebp), %edx
mov -12(%ebp), %eax
mov %edx, %eax
mov %edx, -16(%ebp) 
mov %eax, -12(%ebp) 
#IN MEM
mov -24(%ebp), %edx
mov %ebp, %edx
mov %edx, -24(%ebp) 
#IN CONST
mov -28(%ebp), %edx
mov $12, %edx
mov %edx, -28(%ebp) 
mov -28(%ebp), %edx
mov -24(%ebp), %eax
add %edx, %eax
mov %edx, -28(%ebp) 
mov %eax, -24(%ebp) 
mov -24(%ebp), %edx
mov -20(%ebp), %eax
mov (%edx), %eax
mov %edx, -24(%ebp) 
mov %eax, -20(%ebp) 
mov -20(%ebp), %edx
mov -12(%ebp), %eax
sub %edx, %eax
mov %edx, -20(%ebp) 
mov %eax, -12(%ebp) 
mov -12(%ebp), %edx
push %edx
mov %edx, -12(%ebp) 
push %ebp
call L6
add $8, %esp
pop %edx
pop %ecx
mov -8(%ebp), %edx
mov %eax, %edx
mov %edx, -8(%ebp) 
pop %eax
mov -8(%ebp), %edx
mov %edx, %ebx
mov %edx, -8(%ebp) 
jmp L17
L12:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN MEM
mov -56(%ebp), %edx
mov %ebp, %edx
mov %edx, -56(%ebp) 
#IN CONST
mov -60(%ebp), %edx
mov $12, %edx
mov %edx, -60(%ebp) 
mov -60(%ebp), %edx
mov -56(%ebp), %eax
add %edx, %eax
mov %edx, -60(%ebp) 
mov %eax, -56(%ebp) 
mov -56(%ebp), %edx
mov -52(%ebp), %eax
mov (%edx), %eax
mov %edx, -56(%ebp) 
mov %eax, -52(%ebp) 
mov -52(%ebp), %edx
push %edx
mov %edx, -52(%ebp) 
push %ebp
call L6
add $8, %esp
pop %edx
pop %ecx
mov -48(%ebp), %edx
mov %eax, %edx
mov %edx, -48(%ebp) 
pop %eax
mov -48(%ebp), %edx
mov %edx, %ecx
mov %edx, -48(%ebp) 
jmp L14
L96:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L6:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $128, %esp
push %ebx
push %edi
push %esi
L100:
#IN CJUMP
#IN CONST
mov $0, %ecx
#IN MEM
mov %ebp, %edi
#IN CONST
mov $12, %ebx
add %ebx, %edi
mov (%edi), %esi
cmp %ecx, %esi
jg L8
L9:
#IN REGMOVE
#IN CONST
mov -16(%ebp), %edx
mov $0, %edx
mov %edx, -16(%ebp) 
mov -16(%ebp), %edx
mov %edx, %eax
mov %edx, -16(%ebp) 
jmp L99
L8:
#IN CALL
push %eax
push %ecx
push %edx
#IN DIV
push %eax
push %edx
push %ecx
#IN MEM
mov -36(%ebp), %edx
mov %ebp, %edx
mov %edx, -36(%ebp) 
#IN CONST
mov -40(%ebp), %edx
mov $12, %edx
mov %edx, -40(%ebp) 
mov -40(%ebp), %edx
mov -36(%ebp), %eax
add %edx, %eax
mov %edx, -40(%ebp) 
mov %eax, -36(%ebp) 
mov -36(%ebp), %edx
mov -32(%ebp), %eax
mov (%edx), %eax
mov %edx, -36(%ebp) 
mov %eax, -32(%ebp) 
mov -32(%ebp), %edx
mov -24(%ebp), %eax
mov %edx, %eax
mov %edx, -32(%ebp) 
mov %eax, -24(%ebp) 
#IN CONST
mov -44(%ebp), %edx
mov $10, %edx
mov %edx, -44(%ebp) 
mov -44(%ebp), %edx
mov -28(%ebp), %eax
mov %edx, %eax
mov %edx, -44(%ebp) 
mov %eax, -28(%ebp) 
mov -24(%ebp), %edx
mov %edx, %eax
mov %edx, -24(%ebp) 
mov -28(%ebp), %edx
mov %edx, %ecx
mov %edx, -28(%ebp) 
cdq
idiv %ecx
pop %ecx
mov -20(%ebp), %edx
mov %eax, %edx
mov %edx, -20(%ebp) 
pop %edx
pop %eax
mov -20(%ebp), %edx
push %edx
mov %edx, -20(%ebp) 
#IN MEM
mov -52(%ebp), %edx
mov %ebp, %edx
mov %edx, -52(%ebp) 
#IN CONST
mov -56(%ebp), %edx
mov $8, %edx
mov %edx, -56(%ebp) 
mov -56(%ebp), %edx
mov -52(%ebp), %eax
add %edx, %eax
mov %edx, -56(%ebp) 
mov %eax, -52(%ebp) 
mov -52(%ebp), %edx
mov -48(%ebp), %eax
mov (%edx), %eax
mov %edx, -52(%ebp) 
mov %eax, -48(%ebp) 
mov -48(%ebp), %edx
push %edx
mov %edx, -48(%ebp) 
call L6
add $8, %esp
pop %edx
pop %ecx
mov %eax, %ebx
pop %eax
#IN REGMOVE
#IN MEM
mov -68(%ebp), %edx
mov %ebp, %edx
mov %edx, -68(%ebp) 
#IN CONST
mov -72(%ebp), %edx
mov $12, %edx
mov %edx, -72(%ebp) 
mov -72(%ebp), %edx
mov -68(%ebp), %eax
add %edx, %eax
mov %edx, -72(%ebp) 
mov %eax, -68(%ebp) 
mov -68(%ebp), %edx
mov -64(%ebp), %eax
mov (%edx), %eax
mov %edx, -68(%ebp) 
mov %eax, -64(%ebp) 
mov -64(%ebp), %edx
mov -60(%ebp), %eax
mov %edx, %eax
mov %edx, -64(%ebp) 
mov %eax, -60(%ebp) 
#IN DIV
push %eax
push %edx
push %ecx
#IN MEM
mov -96(%ebp), %edx
mov %ebp, %edx
mov %edx, -96(%ebp) 
#IN CONST
mov -100(%ebp), %edx
mov $12, %edx
mov %edx, -100(%ebp) 
mov -100(%ebp), %edx
mov -96(%ebp), %eax
add %edx, %eax
mov %edx, -100(%ebp) 
mov %eax, -96(%ebp) 
mov -96(%ebp), %edx
mov -92(%ebp), %eax
mov (%edx), %eax
mov %edx, -96(%ebp) 
mov %eax, -92(%ebp) 
mov -92(%ebp), %edx
mov -84(%ebp), %eax
mov %edx, %eax
mov %edx, -92(%ebp) 
mov %eax, -84(%ebp) 
#IN CONST
mov -104(%ebp), %edx
mov $10, %edx
mov %edx, -104(%ebp) 
mov -104(%ebp), %edx
mov -88(%ebp), %eax
mov %edx, %eax
mov %edx, -104(%ebp) 
mov %eax, -88(%ebp) 
mov -84(%ebp), %edx
mov %edx, %eax
mov %edx, -84(%ebp) 
mov -88(%ebp), %edx
mov %edx, %ecx
mov %edx, -88(%ebp) 
cdq
idiv %ecx
pop %ecx
mov -80(%ebp), %edx
mov %eax, %edx
mov %edx, -80(%ebp) 
pop %edx
pop %eax
mov -80(%ebp), %edx
mov -76(%ebp), %eax
mov %edx, %eax
mov %edx, -80(%ebp) 
mov %eax, -76(%ebp) 
#IN CONST
mov -108(%ebp), %edx
mov $10, %edx
mov %edx, -108(%ebp) 
mov -108(%ebp), %edx
mov -76(%ebp), %eax
imul %edx, %eax
mov %edx, -108(%ebp) 
mov %eax, -76(%ebp) 
mov -76(%ebp), %edx
mov -60(%ebp), %eax
sub %edx, %eax
mov %edx, -76(%ebp) 
mov %eax, -60(%ebp) 
mov -60(%ebp), %edx
mov -4(%ebp), %eax
mov %edx, %eax
mov %edx, -60(%ebp) 
mov %eax, -4(%ebp) 
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov -116(%ebp), %edx
mov $L7, %edx
mov %edx, -116(%ebp) 
mov -116(%ebp), %edx
push %edx
mov %edx, -116(%ebp) 
call ord
add $4, %esp
pop %edx
pop %ecx
mov -112(%ebp), %edx
mov %eax, %edx
mov %edx, -112(%ebp) 
pop %eax
mov -112(%ebp), %edx
mov -8(%ebp), %eax
mov %edx, %eax
mov %edx, -112(%ebp) 
mov %eax, -8(%ebp) 
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
mov -4(%ebp), %edx
mov -124(%ebp), %eax
mov %edx, %eax
mov %edx, -4(%ebp) 
mov %eax, -124(%ebp) 
mov -8(%ebp), %edx
mov -124(%ebp), %eax
add %edx, %eax
mov %edx, -8(%ebp) 
mov %eax, -124(%ebp) 
mov -124(%ebp), %edx
push %edx
mov %edx, -124(%ebp) 
call chr
add $4, %esp
pop %edx
pop %ecx
mov -120(%ebp), %edx
mov %eax, %edx
mov %edx, -120(%ebp) 
pop %eax
mov -120(%ebp), %edx
mov -12(%ebp), %eax
mov %edx, %eax
mov %edx, -120(%ebp) 
mov %eax, -12(%ebp) 
#IN CALL
push %eax
push %ecx
push %edx
mov -12(%ebp), %edx
push %edx
mov %edx, -12(%ebp) 
call print
add $4, %esp
pop %edx
pop %ecx
mov %eax, %edi
pop %eax
jmp L9
L99:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
