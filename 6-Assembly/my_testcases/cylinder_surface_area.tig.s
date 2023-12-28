.global tigermain

.data
L55:
.long 1
.ascii " " 
L49:
.long 1
.ascii " " 
L48:
.long 1
.ascii "\n" 
L41:
.long 1
.ascii "0" 
L40:
.long 1
.ascii "-" 
L37:
.long 1
.ascii "0" 
L21:
.long 1
.ascii "0" 
L12:
.long 1
.ascii " " 
L11:
.long 1
.ascii "\n" 
L5:
.long 1
.ascii "0" 
L4:
.long 1
.ascii "9" 

.text
tigermain:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $52, %esp
push %ebx
push %edi
push %esi
L75:
#IN REGMOVE
mov -20(%ebp), %edx
mov %ebp, %edx
mov %edx, -20(%ebp) 
#IN CONST
mov -24(%ebp), %edx
mov $-4, %edx
mov %edx, -24(%ebp) 
mov -24(%ebp), %edx
mov -20(%ebp), %eax
add %edx, %eax
mov %edx, -24(%ebp) 
mov %eax, -20(%ebp) 
mov -20(%ebp), %edx
mov -8(%ebp), %eax
mov %edx, %eax
mov %edx, -20(%ebp) 
mov %eax, -8(%ebp) 
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
call my_getchar
add $0, %esp
pop %edx
pop %ecx
mov -28(%ebp), %edx
mov %eax, %edx
mov %edx, -28(%ebp) 
pop %eax
mov -28(%ebp), %edx
mov %edx, %ecx
mov %edx, -28(%ebp) 
#IN MEM MOVE
mov -8(%ebp), %edx
mov %ecx, (%edx)
mov %edx, -8(%ebp) 
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
push %ebp
call L25
add $4, %esp
pop %edx
pop %ecx
mov -32(%ebp), %edx
mov %eax, %edx
mov %edx, -32(%ebp) 
pop %eax
mov -32(%ebp), %edx
mov %edx, %ebx
mov %edx, -32(%ebp) 
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
push %ebx
push %ebp
call L29
add $8, %esp
pop %edx
pop %ecx
mov -36(%ebp), %edx
mov %eax, %edx
mov %edx, -36(%ebp) 
pop %eax
mov -36(%ebp), %edx
mov %edx, %edi
mov %edx, -36(%ebp) 
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
push %ebx
push %ebp
call L30
add $8, %esp
pop %edx
pop %ecx
mov -40(%ebp), %edx
mov %eax, %edx
mov %edx, -40(%ebp) 
pop %eax
mov -40(%ebp), %edx
mov %edx, %esi
mov %edx, -40(%ebp) 
mov -16(%ebp), %edx
mov %ebp, %edx
mov %edx, -16(%ebp) 
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
push %esi
push %ebp
call L32
add $8, %esp
pop %edx
pop %ecx
mov -44(%ebp), %edx
mov %eax, %edx
mov %edx, -44(%ebp) 
pop %eax
mov -44(%ebp), %edx
mov -12(%ebp), %eax
mov %edx, %eax
mov %edx, -44(%ebp) 
mov %eax, -12(%ebp) 
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
mov -12(%ebp), %edx
push %edx
mov %edx, -12(%ebp) 
mov -16(%ebp), %edx
push %edx
mov %edx, -16(%ebp) 
call L26
add $8, %esp
pop %edx
pop %ecx
mov -48(%ebp), %edx
mov %eax, %edx
mov %edx, -48(%ebp) 
pop %eax
mov -48(%ebp), %edx
mov %edx, %eax
mov %edx, -48(%ebp) 
jmp L74
L74:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L32:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $84, %esp
push %ebx
push %edi
push %esi
L78:
#IN REGMOVE
#IN MEM
#IN MEM
mov -12(%ebp), %edx
mov %ebp, %edx
mov %edx, -12(%ebp) 
#IN CONST
mov -16(%ebp), %edx
mov $12, %edx
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
mov -4(%ebp), %eax
mov %edx, %eax
mov %edx, -8(%ebp) 
mov %eax, -4(%ebp) 
#IN CONST
mov -24(%ebp), %edx
mov $0, %edx
mov %edx, -24(%ebp) 
mov -24(%ebp), %edx
mov -20(%ebp), %eax
mov %edx, %eax
mov %edx, -24(%ebp) 
mov %eax, -20(%ebp) 
#IN CONST
mov -28(%ebp), %edx
mov $4, %edx
mov %edx, -28(%ebp) 
mov -28(%ebp), %edx
mov -20(%ebp), %eax
imul %edx, %eax
mov %edx, -28(%ebp) 
mov %eax, -20(%ebp) 
mov -20(%ebp), %edx
mov -4(%ebp), %eax
add %edx, %eax
mov %edx, -20(%ebp) 
mov %eax, -4(%ebp) 
mov -4(%ebp), %edx
mov (%edx), %ecx
mov %edx, -4(%ebp) 
mov %ecx, %ebx
#IN REGMOVE
#IN MEM
#IN MEM
mov -44(%ebp), %edx
mov %ebp, %edx
mov %edx, -44(%ebp) 
#IN CONST
mov -48(%ebp), %edx
mov $12, %edx
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
mov -36(%ebp), %eax
mov %edx, %eax
mov %edx, -40(%ebp) 
mov %eax, -36(%ebp) 
#IN CONST
mov -56(%ebp), %edx
mov $1, %edx
mov %edx, -56(%ebp) 
mov -56(%ebp), %edx
mov -52(%ebp), %eax
mov %edx, %eax
mov %edx, -56(%ebp) 
mov %eax, -52(%ebp) 
#IN CONST
mov -60(%ebp), %edx
mov $4, %edx
mov %edx, -60(%ebp) 
mov -60(%ebp), %edx
mov -52(%ebp), %eax
imul %edx, %eax
mov %edx, -60(%ebp) 
mov %eax, -52(%ebp) 
mov -52(%ebp), %edx
mov -36(%ebp), %eax
add %edx, %eax
mov %edx, -52(%ebp) 
mov %eax, -36(%ebp) 
mov -36(%ebp), %edx
mov -32(%ebp), %eax
mov (%edx), %eax
mov %edx, -36(%ebp) 
mov %eax, -32(%ebp) 
mov -32(%ebp), %edx
mov %edx, %edi
mov %edx, -32(%ebp) 
#IN REGMOVE
#IN CONST
mov -64(%ebp), %edx
mov $3, %edx
mov %edx, -64(%ebp) 
mov -64(%ebp), %edx
mov %edx, %esi
mov %edx, -64(%ebp) 
#IN REGMOVE
#IN CONST
mov -80(%ebp), %edx
mov $2, %edx
mov %edx, -80(%ebp) 
mov -80(%ebp), %edx
mov -76(%ebp), %eax
mov %edx, %eax
mov %edx, -80(%ebp) 
mov %eax, -76(%ebp) 
mov -76(%ebp), %edx
imul %esi, %edx
mov %edx, -76(%ebp) 
mov -76(%ebp), %edx
mov -72(%ebp), %eax
mov %edx, %eax
mov %edx, -76(%ebp) 
mov %eax, -72(%ebp) 
mov -72(%ebp), %edx
imul %ebx, %edx
mov %edx, -72(%ebp) 
mov -72(%ebp), %edx
mov -68(%ebp), %eax
mov %edx, %eax
mov %edx, -72(%ebp) 
mov %eax, -68(%ebp) 
mov -68(%ebp), %edx
imul %edi, %edx
mov %edx, -68(%ebp) 
mov -68(%ebp), %edx
mov %edx, %eax
mov %edx, -68(%ebp) 
jmp L77
L77:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L31:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $40, %esp
push %ebx
push %edi
push %esi
L81:
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
jge L69
L70:
#IN REGMOVE
#IN CONST
mov -24(%ebp), %edx
mov $0, %edx
mov %edx, -24(%ebp) 
mov -24(%ebp), %edx
mov -20(%ebp), %eax
mov %edx, %eax
mov %edx, -24(%ebp) 
mov %eax, -20(%ebp) 
#IN MEM
mov -32(%ebp), %edx
mov %ebp, %edx
mov %edx, -32(%ebp) 
#IN CONST
mov -36(%ebp), %edx
mov $12, %edx
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
mov -20(%ebp), %eax
sub %edx, %eax
mov %edx, -28(%ebp) 
mov %eax, -20(%ebp) 
mov -20(%ebp), %edx
mov -16(%ebp), %eax
mov %edx, %eax
mov %edx, -20(%ebp) 
mov %eax, -16(%ebp) 
L71:
mov -16(%ebp), %edx
mov %edx, %eax
mov %edx, -16(%ebp) 
jmp L80
L69:
#IN REGMOVE
#IN MEM
mov -8(%ebp), %edx
mov %ebp, %edx
mov %edx, -8(%ebp) 
#IN CONST
mov -12(%ebp), %edx
mov $12, %edx
mov %edx, -12(%ebp) 
mov -12(%ebp), %edx
mov -8(%ebp), %eax
add %edx, %eax
mov %edx, -12(%ebp) 
mov %eax, -8(%ebp) 
mov -8(%ebp), %edx
mov -4(%ebp), %eax
mov (%edx), %eax
mov %edx, -8(%ebp) 
mov %eax, -4(%ebp) 
mov -4(%ebp), %edx
mov -16(%ebp), %eax
mov %edx, %eax
mov %edx, -4(%ebp) 
mov %eax, -16(%ebp) 
jmp L71
L80:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L30:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $156, %esp
push %ebx
push %edi
push %esi
L84:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN MEM
mov -16(%ebp), %edx
mov %ebp, %edx
mov %edx, -16(%ebp) 
#IN CONST
mov -20(%ebp), %edx
mov $12, %edx
mov %edx, -20(%ebp) 
mov -20(%ebp), %edx
mov -16(%ebp), %eax
add %edx, %eax
mov %edx, -20(%ebp) 
mov %eax, -16(%ebp) 
mov -16(%ebp), %edx
mov (%edx), %ebx
mov %edx, -16(%ebp) 
push %ebx
#IN MEM
mov -28(%ebp), %edx
mov %ebp, %edx
mov %edx, -28(%ebp) 
#IN CONST
mov -32(%ebp), %edx
mov $8, %edx
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
push %edx
mov %edx, -24(%ebp) 
call L29
add $8, %esp
pop %edx
pop %ecx
mov %eax, %esi
pop %eax
mov %esi, %ecx
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN CONST
mov -40(%ebp), %edx
mov $0, %edx
mov %edx, -40(%ebp) 
mov -40(%ebp), %edx
push %edx
mov %edx, -40(%ebp) 
push %ecx
call initArray
add $8, %esp
pop %edx
pop %ecx
mov -36(%ebp), %edx
mov %eax, %edx
mov %edx, -36(%ebp) 
pop %eax
mov -36(%ebp), %edx
mov -12(%ebp), %eax
mov %edx, %eax
mov %edx, -36(%ebp) 
mov %eax, -12(%ebp) 
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN MEM
mov -52(%ebp), %edx
mov %ebp, %edx
mov %edx, -52(%ebp) 
#IN CONST
mov -56(%ebp), %edx
mov $12, %edx
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
#IN MEM
mov -64(%ebp), %edx
mov %ebp, %edx
mov %edx, -64(%ebp) 
#IN CONST
mov -68(%ebp), %edx
mov $8, %edx
mov %edx, -68(%ebp) 
mov -68(%ebp), %edx
mov -64(%ebp), %eax
add %edx, %eax
mov %edx, -68(%ebp) 
mov %eax, -64(%ebp) 
mov -64(%ebp), %edx
mov -60(%ebp), %eax
mov (%edx), %eax
mov %edx, -64(%ebp) 
mov %eax, -60(%ebp) 
mov -60(%ebp), %edx
push %edx
mov %edx, -60(%ebp) 
call L29
add $8, %esp
pop %edx
pop %ecx
mov -44(%ebp), %edx
mov %eax, %edx
mov %edx, -44(%ebp) 
pop %eax
mov -44(%ebp), %edx
mov %edx, %edi
mov %edx, -44(%ebp) 
#IN REGMOVE
#IN CONST
mov -72(%ebp), %edx
mov $0, %edx
mov %edx, -72(%ebp) 
mov -72(%ebp), %edx
mov -8(%ebp), %eax
mov %edx, %eax
mov %edx, -72(%ebp) 
mov %eax, -8(%ebp) 
#IN REGMOVE
mov -76(%ebp), %edx
mov %edi, %edx
mov %edx, -76(%ebp) 
#IN CONST
mov -80(%ebp), %edx
mov $1, %edx
mov %edx, -80(%ebp) 
mov -80(%ebp), %edx
mov -76(%ebp), %eax
sub %edx, %eax
mov %edx, -80(%ebp) 
mov %eax, -76(%ebp) 
mov -76(%ebp), %edx
mov -4(%ebp), %eax
mov %edx, %eax
mov %edx, -76(%ebp) 
mov %eax, -4(%ebp) 
#IN CJUMP
mov -84(%ebp), %edx
mov %edi, %edx
mov %edx, -84(%ebp) 
#IN CONST
mov -88(%ebp), %edx
mov $1, %edx
mov %edx, -88(%ebp) 
mov -88(%ebp), %edx
mov -84(%ebp), %eax
sub %edx, %eax
mov %edx, -88(%ebp) 
mov %eax, -84(%ebp) 
#IN CONST
mov -92(%ebp), %edx
mov $0, %edx
mov %edx, -92(%ebp) 
mov -84(%ebp), %edx
mov -92(%ebp), %eax
cmp %edx, %eax
mov %edx, -84(%ebp) 
mov %eax, -92(%ebp) 
jle L65
L67:
mov -12(%ebp), %edx
mov %edx, %eax
mov %edx, -12(%ebp) 
jmp L83
L65:
#IN MEM MOVE
mov -12(%ebp), %edx
mov %edx, %ebx
mov %edx, -12(%ebp) 
mov -8(%ebp), %edx
mov -96(%ebp), %eax
mov %edx, %eax
mov %edx, -8(%ebp) 
mov %eax, -96(%ebp) 
#IN CONST
mov -100(%ebp), %edx
mov $4, %edx
mov %edx, -100(%ebp) 
mov -100(%ebp), %edx
mov -96(%ebp), %eax
imul %edx, %eax
mov %edx, -100(%ebp) 
mov %eax, -96(%ebp) 
mov -96(%ebp), %edx
add %edx, %ebx
mov %edx, -96(%ebp) 
#IN MEM
#IN MEM
mov -116(%ebp), %edx
mov %ebp, %edx
mov %edx, -116(%ebp) 
#IN CONST
mov -120(%ebp), %edx
mov $12, %edx
mov %edx, -120(%ebp) 
mov -120(%ebp), %edx
mov -116(%ebp), %eax
add %edx, %eax
mov %edx, -120(%ebp) 
mov %eax, -116(%ebp) 
mov -116(%ebp), %edx
mov -112(%ebp), %eax
mov (%edx), %eax
mov %edx, -116(%ebp) 
mov %eax, -112(%ebp) 
mov -112(%ebp), %edx
mov -108(%ebp), %eax
mov %edx, %eax
mov %edx, -112(%ebp) 
mov %eax, -108(%ebp) 
#IN CONST
mov -124(%ebp), %edx
mov $0, %edx
mov %edx, -124(%ebp) 
mov -124(%ebp), %edx
mov -108(%ebp), %eax
add %edx, %eax
mov %edx, -124(%ebp) 
mov %eax, -108(%ebp) 
mov -108(%ebp), %edx
mov -104(%ebp), %eax
mov (%edx), %eax
mov %edx, -108(%ebp) 
mov %eax, -104(%ebp) 
mov -104(%ebp), %edx
mov %edx, (%ebx)
mov %edx, -104(%ebp) 
#IN MEM MOVE
mov %ebp, %esi
#IN CONST
mov -128(%ebp), %edx
mov $12, %edx
mov %edx, -128(%ebp) 
mov -128(%ebp), %edx
add %edx, %esi
mov %edx, -128(%ebp) 
#IN MEM
#IN MEM
mov -144(%ebp), %edx
mov %ebp, %edx
mov %edx, -144(%ebp) 
#IN CONST
mov -148(%ebp), %edx
mov $12, %edx
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
mov $4, %edx
mov %edx, -152(%ebp) 
mov -152(%ebp), %edx
mov -136(%ebp), %eax
add %edx, %eax
mov %edx, -152(%ebp) 
mov %eax, -136(%ebp) 
mov -136(%ebp), %edx
mov -132(%ebp), %eax
mov (%edx), %eax
mov %edx, -136(%ebp) 
mov %eax, -132(%ebp) 
mov -132(%ebp), %edx
mov %edx, (%esi)
mov %edx, -132(%ebp) 
#IN CJUMP
mov -4(%ebp), %edx
mov -8(%ebp), %eax
cmp %edx, %eax
mov %edx, -4(%ebp) 
mov %eax, -8(%ebp) 
jge L67
L68:
#IN REGMOVE
mov -8(%ebp), %edx
mov %edx, %ecx
mov %edx, -8(%ebp) 
#IN CONST
mov $1, %edi
add %edi, %ecx
mov -8(%ebp), %edx
mov %ecx, %edx
mov %edx, -8(%ebp) 
jmp L65
L83:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L29:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $64, %esp
push %ebx
push %edi
push %esi
L87:
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
je L60
L61:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN MEM
#IN MEM
mov -32(%ebp), %edx
mov %ebp, %edx
mov %edx, -32(%ebp) 
#IN CONST
mov -36(%ebp), %edx
mov $12, %edx
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
mov -24(%ebp), %eax
mov %edx, %eax
mov %edx, -28(%ebp) 
mov %eax, -24(%ebp) 
#IN CONST
mov -40(%ebp), %edx
mov $4, %edx
mov %edx, -40(%ebp) 
mov -40(%ebp), %edx
mov -24(%ebp), %eax
add %edx, %eax
mov %edx, -40(%ebp) 
mov %eax, -24(%ebp) 
mov -24(%ebp), %edx
mov -20(%ebp), %eax
mov (%edx), %eax
mov %edx, -24(%ebp) 
mov %eax, -20(%ebp) 
mov -20(%ebp), %edx
push %edx
mov %edx, -20(%ebp) 
#IN MEM
mov -48(%ebp), %edx
mov %ebp, %edx
mov %edx, -48(%ebp) 
#IN CONST
mov -52(%ebp), %edx
mov $8, %edx
mov %edx, -52(%ebp) 
mov -52(%ebp), %edx
mov -48(%ebp), %eax
add %edx, %eax
mov %edx, -52(%ebp) 
mov %eax, -48(%ebp) 
mov -48(%ebp), %edx
mov -44(%ebp), %eax
mov (%edx), %eax
mov %edx, -48(%ebp) 
mov %eax, -44(%ebp) 
mov -44(%ebp), %edx
push %edx
mov %edx, -44(%ebp) 
call L29
add $8, %esp
pop %edx
pop %ecx
mov -16(%ebp), %edx
mov %eax, %edx
mov %edx, -16(%ebp) 
pop %eax
mov -16(%ebp), %edx
mov -12(%ebp), %eax
mov %edx, %eax
mov %edx, -16(%ebp) 
mov %eax, -12(%ebp) 
#IN REGMOVE
#IN CONST
mov -60(%ebp), %edx
mov $1, %edx
mov %edx, -60(%ebp) 
mov -60(%ebp), %edx
mov -56(%ebp), %eax
mov %edx, %eax
mov %edx, -60(%ebp) 
mov %eax, -56(%ebp) 
mov -12(%ebp), %edx
mov -56(%ebp), %eax
add %edx, %eax
mov %edx, -12(%ebp) 
mov %eax, -56(%ebp) 
mov -56(%ebp), %edx
mov -8(%ebp), %eax
mov %edx, %eax
mov %edx, -56(%ebp) 
mov %eax, -8(%ebp) 
L62:
mov -8(%ebp), %edx
mov %edx, %eax
mov %edx, -8(%ebp) 
jmp L86
L60:
#IN REGMOVE
#IN CONST
mov -4(%ebp), %edx
mov $0, %edx
mov %edx, -4(%ebp) 
mov -4(%ebp), %edx
mov -8(%ebp), %eax
mov %edx, %eax
mov %edx, -4(%ebp) 
mov %eax, -8(%ebp) 
jmp L62
L86:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L28:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $92, %esp
push %ebx
push %edi
push %esi
L90:
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
jle L56
L58:
#IN REGMOVE
#IN CONST
mov -44(%ebp), %edx
mov $0, %edx
mov %edx, -44(%ebp) 
mov -44(%ebp), %edx
mov %edx, %eax
mov %edx, -44(%ebp) 
jmp L89
L56:
#IN CALL
push %eax
push %ecx
push %edx
#IN MEM
#IN MEM
mov -60(%ebp), %edx
mov %ebp, %edx
mov %edx, -60(%ebp) 
#IN CONST
mov -64(%ebp), %edx
mov $12, %edx
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
mov -8(%ebp), %edx
mov -68(%ebp), %eax
mov %edx, %eax
mov %edx, -8(%ebp) 
mov %eax, -68(%ebp) 
#IN CONST
mov -72(%ebp), %edx
mov $4, %edx
mov %edx, -72(%ebp) 
mov -72(%ebp), %edx
mov -68(%ebp), %eax
imul %edx, %eax
mov %edx, -72(%ebp) 
mov %eax, -68(%ebp) 
mov -68(%ebp), %edx
mov -52(%ebp), %eax
add %edx, %eax
mov %edx, -68(%ebp) 
mov %eax, -52(%ebp) 
mov -52(%ebp), %edx
mov -48(%ebp), %eax
mov (%edx), %eax
mov %edx, -52(%ebp) 
mov %eax, -48(%ebp) 
mov -48(%ebp), %edx
push %edx
mov %edx, -48(%ebp) 
#IN MEM
mov -80(%ebp), %edx
mov %ebp, %edx
mov %edx, -80(%ebp) 
#IN CONST
mov -84(%ebp), %edx
mov $8, %edx
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
call L26
add $8, %esp
pop %edx
pop %ecx
mov %eax, %ebx
pop %eax
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov -88(%ebp), %edx
mov $L55, %edx
mov %edx, -88(%ebp) 
mov -88(%ebp), %edx
push %edx
mov %edx, -88(%ebp) 
call print
add $4, %esp
pop %edx
pop %ecx
mov %eax, %edi
pop %eax
#IN CJUMP
mov -4(%ebp), %edx
mov -8(%ebp), %eax
cmp %edx, %eax
mov %edx, -4(%ebp) 
mov %eax, -8(%ebp) 
jge L58
L59:
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
jmp L56
L89:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L27:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $104, %esp
push %ebx
push %edi
push %esi
L93:
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
je L50
L51:
#IN CALL
push %eax
push %ecx
push %edx
#IN MEM
#IN MEM
mov -32(%ebp), %edx
mov %ebp, %edx
mov %edx, -32(%ebp) 
#IN CONST
mov -36(%ebp), %edx
mov $12, %edx
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
mov -24(%ebp), %eax
mov %edx, %eax
mov %edx, -28(%ebp) 
mov %eax, -24(%ebp) 
#IN CONST
mov -40(%ebp), %edx
mov $0, %edx
mov %edx, -40(%ebp) 
mov -40(%ebp), %edx
mov -24(%ebp), %eax
add %edx, %eax
mov %edx, -40(%ebp) 
mov %eax, -24(%ebp) 
mov -24(%ebp), %edx
mov -20(%ebp), %eax
mov (%edx), %eax
mov %edx, -24(%ebp) 
mov %eax, -20(%ebp) 
mov -20(%ebp), %edx
push %edx
mov %edx, -20(%ebp) 
#IN MEM
mov -48(%ebp), %edx
mov %ebp, %edx
mov %edx, -48(%ebp) 
#IN CONST
mov -52(%ebp), %edx
mov $8, %edx
mov %edx, -52(%ebp) 
mov -52(%ebp), %edx
mov -48(%ebp), %eax
add %edx, %eax
mov %edx, -52(%ebp) 
mov %eax, -48(%ebp) 
mov -48(%ebp), %edx
mov -44(%ebp), %eax
mov (%edx), %eax
mov %edx, -48(%ebp) 
mov %eax, -44(%ebp) 
mov -44(%ebp), %edx
push %edx
mov %edx, -44(%ebp) 
call L26
add $8, %esp
pop %edx
pop %ecx
mov -16(%ebp), %edx
mov %eax, %edx
mov %edx, -16(%ebp) 
pop %eax
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov -60(%ebp), %edx
mov $L49, %edx
mov %edx, -60(%ebp) 
mov -60(%ebp), %edx
push %edx
mov %edx, -60(%ebp) 
call print
add $4, %esp
pop %edx
pop %ecx
mov -56(%ebp), %edx
mov %eax, %edx
mov %edx, -56(%ebp) 
pop %eax
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN MEM
#IN MEM
mov -80(%ebp), %edx
mov %ebp, %edx
mov %edx, -80(%ebp) 
#IN CONST
mov -84(%ebp), %edx
mov $12, %edx
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
mov $4, %edx
mov %edx, -88(%ebp) 
mov -88(%ebp), %edx
mov -72(%ebp), %eax
add %edx, %eax
mov %edx, -88(%ebp) 
mov %eax, -72(%ebp) 
mov -72(%ebp), %edx
mov -68(%ebp), %eax
mov (%edx), %eax
mov %edx, -72(%ebp) 
mov %eax, -68(%ebp) 
mov -68(%ebp), %edx
push %edx
mov %edx, -68(%ebp) 
#IN MEM
mov -96(%ebp), %edx
mov %ebp, %edx
mov %edx, -96(%ebp) 
#IN CONST
mov -100(%ebp), %edx
mov $8, %edx
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
push %edx
mov %edx, -92(%ebp) 
call L27
add $8, %esp
pop %edx
pop %ecx
mov -64(%ebp), %edx
mov %eax, %edx
mov %edx, -64(%ebp) 
pop %eax
mov -64(%ebp), %edx
mov -12(%ebp), %eax
mov %edx, %eax
mov %edx, -64(%ebp) 
mov %eax, -12(%ebp) 
L52:
mov -12(%ebp), %edx
mov %edx, %eax
mov %edx, -12(%ebp) 
jmp L92
L50:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov -8(%ebp), %edx
mov $L48, %edx
mov %edx, -8(%ebp) 
mov -8(%ebp), %edx
push %edx
mov %edx, -8(%ebp) 
call print
add $4, %esp
pop %edx
pop %ecx
mov -4(%ebp), %edx
mov %eax, %edx
mov %edx, -4(%ebp) 
pop %eax
mov -4(%ebp), %edx
mov -12(%ebp), %eax
mov %edx, %eax
mov %edx, -4(%ebp) 
mov %eax, -12(%ebp) 
jmp L52
L92:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L26:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $64, %esp
push %ebx
push %edi
push %esi
L96:
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
jl L45
L46:
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
jg L42
L43:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov $L41, %edi
push %edi
call print
add $4, %esp
pop %edx
pop %ecx
mov %eax, %esi
pop %eax
mov %esi, %ecx
L44:
mov %ecx, %ebx
L47:
mov %ebx, %eax
jmp L95
L45:
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov -4(%ebp), %edx
mov $L40, %edx
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
call L36
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
jmp L47
L42:
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
call L36
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
jmp L44
L95:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L36:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $128, %esp
push %ebx
push %edi
push %esi
L99:
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
jg L38
L39:
#IN REGMOVE
#IN CONST
mov -16(%ebp), %edx
mov $0, %edx
mov %edx, -16(%ebp) 
mov -16(%ebp), %edx
mov %edx, %eax
mov %edx, -16(%ebp) 
jmp L98
L38:
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
call L36
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
mov $L37, %edx
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
jmp L39
L98:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L25:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $104, %esp
push %ebx
push %edi
push %esi
L102:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN CONST
mov $1, %esi
push %esi
call allocRecord
add $4, %esp
pop %edx
pop %ecx
mov %eax, %ecx
pop %eax
mov %ecx, %ebx
#IN MEM MOVE
mov -16(%ebp), %edx
mov %ebx, %edx
mov %edx, -16(%ebp) 
#IN CONST
mov -20(%ebp), %edx
mov $0, %edx
mov %edx, -20(%ebp) 
mov -20(%ebp), %edx
mov -16(%ebp), %eax
add %edx, %eax
mov %edx, -20(%ebp) 
mov %eax, -16(%ebp) 
#IN CONST
mov -24(%ebp), %edx
mov $0, %edx
mov %edx, -24(%ebp) 
mov -24(%ebp), %edx
mov -16(%ebp), %eax
mov %edx, (%eax)
mov %edx, -24(%ebp) 
mov %eax, -16(%ebp) 
mov %ebx, %edi
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
push %edi
#IN MEM
mov -36(%ebp), %edx
mov %ebp, %edx
mov %edx, -36(%ebp) 
#IN CONST
mov -40(%ebp), %edx
mov $8, %edx
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
push %edx
mov %edx, -32(%ebp) 
call L1
add $8, %esp
pop %edx
pop %ecx
mov -28(%ebp), %edx
mov %eax, %edx
mov %edx, -28(%ebp) 
pop %eax
mov -28(%ebp), %edx
mov -12(%ebp), %eax
mov %edx, %eax
mov %edx, -28(%ebp) 
mov %eax, -12(%ebp) 
#IN CJUMP
#IN CONST
mov -44(%ebp), %edx
mov $0, %edx
mov %edx, -44(%ebp) 
#IN MEM
mov -52(%ebp), %edx
mov %edi, %edx
mov %edx, -52(%ebp) 
#IN CONST
mov -56(%ebp), %edx
mov $0, %edx
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
mov -44(%ebp), %edx
mov -48(%ebp), %eax
cmp %edx, %eax
mov %edx, -44(%ebp) 
mov %eax, -48(%ebp) 
jne L33
L34:
#IN REGMOVE
#IN CONST
mov -100(%ebp), %edx
mov $0, %edx
mov %edx, -100(%ebp) 
mov -100(%ebp), %edx
mov -96(%ebp), %eax
mov %edx, %eax
mov %edx, -100(%ebp) 
mov %eax, -96(%ebp) 
L35:
mov -96(%ebp), %edx
mov %edx, %eax
mov %edx, -96(%ebp) 
jmp L101
L33:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN CONST
mov -64(%ebp), %edx
mov $2, %edx
mov %edx, -64(%ebp) 
mov -64(%ebp), %edx
push %edx
mov %edx, -64(%ebp) 
call allocRecord
add $4, %esp
pop %edx
pop %ecx
mov -60(%ebp), %edx
mov %eax, %edx
mov %edx, -60(%ebp) 
pop %eax
mov -60(%ebp), %edx
mov -8(%ebp), %eax
mov %edx, %eax
mov %edx, -60(%ebp) 
mov %eax, -8(%ebp) 
#IN MEM MOVE
mov -8(%ebp), %edx
mov %edx, %ecx
mov %edx, -8(%ebp) 
#IN CONST
mov -68(%ebp), %edx
mov $0, %edx
mov %edx, -68(%ebp) 
mov -68(%ebp), %edx
add %edx, %ecx
mov %edx, -68(%ebp) 
mov -12(%ebp), %edx
mov %edx, (%ecx)
mov %edx, -12(%ebp) 
#IN REGMOVE
mov -8(%ebp), %edx
mov -72(%ebp), %eax
mov %edx, %eax
mov %edx, -8(%ebp) 
mov %eax, -72(%ebp) 
#IN CONST
mov -76(%ebp), %edx
mov $4, %edx
mov %edx, -76(%ebp) 
mov -76(%ebp), %edx
mov -72(%ebp), %eax
add %edx, %eax
mov %edx, -76(%ebp) 
mov %eax, -72(%ebp) 
mov -72(%ebp), %edx
mov %edx, %esi
mov %edx, -72(%ebp) 
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN MEM
mov -88(%ebp), %edx
mov %ebp, %edx
mov %edx, -88(%ebp) 
#IN CONST
mov -92(%ebp), %edx
mov $8, %edx
mov %edx, -92(%ebp) 
mov -92(%ebp), %edx
mov -88(%ebp), %eax
add %edx, %eax
mov %edx, -92(%ebp) 
mov %eax, -88(%ebp) 
mov -88(%ebp), %edx
mov -84(%ebp), %eax
mov (%edx), %eax
mov %edx, -88(%ebp) 
mov %eax, -84(%ebp) 
mov -84(%ebp), %edx
push %edx
mov %edx, -84(%ebp) 
call L25
add $4, %esp
pop %edx
pop %ecx
mov -80(%ebp), %edx
mov %eax, %edx
mov %edx, -80(%ebp) 
pop %eax
mov -80(%ebp), %edx
mov -4(%ebp), %eax
mov %edx, %eax
mov %edx, -80(%ebp) 
mov %eax, -4(%ebp) 
#IN MEM MOVE
mov -4(%ebp), %edx
mov %edx, (%esi)
mov %edx, -4(%ebp) 
mov -8(%ebp), %edx
mov -96(%ebp), %eax
mov %edx, %eax
mov %edx, -8(%ebp) 
mov %eax, -96(%ebp) 
jmp L35
L101:
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
sub $188, %esp
push %ebx
push %edi
push %esi
L105:
#IN REGMOVE
#IN CONST
mov $0, %ecx
mov -4(%ebp), %edx
mov %ecx, %edx
mov %edx, -4(%ebp) 
#IN CALL
push %eax
push %ecx
push %edx
push %ebp
call L3
add $4, %esp
pop %edx
pop %ecx
mov %eax, %ebx
pop %eax
#IN REGMOVE
#IN MEM
mov -16(%ebp), %edx
mov %ebp, %edx
mov %edx, -16(%ebp) 
#IN CONST
mov -20(%ebp), %edx
mov $12, %edx
mov %edx, -20(%ebp) 
mov -20(%ebp), %edx
mov -16(%ebp), %eax
add %edx, %eax
mov %edx, -20(%ebp) 
mov %eax, -16(%ebp) 
mov -16(%ebp), %edx
mov -12(%ebp), %eax
mov (%edx), %eax
mov %edx, -16(%ebp) 
mov %eax, -12(%ebp) 
mov -12(%ebp), %edx
mov -8(%ebp), %eax
mov %edx, %eax
mov %edx, -12(%ebp) 
mov %eax, -8(%ebp) 
#IN CONST
mov -24(%ebp), %edx
mov $0, %edx
mov %edx, -24(%ebp) 
mov -24(%ebp), %edx
mov -8(%ebp), %eax
add %edx, %eax
mov %edx, -24(%ebp) 
mov %eax, -8(%ebp) 
mov -8(%ebp), %edx
mov %edx, %esi
mov %edx, -8(%ebp) 
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN MEM
#IN MEM
mov -44(%ebp), %edx
mov %ebp, %edx
mov %edx, -44(%ebp) 
#IN CONST
mov -48(%ebp), %edx
mov $8, %edx
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
mov -36(%ebp), %eax
mov %edx, %eax
mov %edx, -40(%ebp) 
mov %eax, -36(%ebp) 
#IN CONST
mov -52(%ebp), %edx
mov $-4, %edx
mov %edx, -52(%ebp) 
mov -52(%ebp), %edx
mov -36(%ebp), %eax
add %edx, %eax
mov %edx, -52(%ebp) 
mov %eax, -36(%ebp) 
mov -36(%ebp), %edx
mov -32(%ebp), %eax
mov (%edx), %eax
mov %edx, -36(%ebp) 
mov %eax, -32(%ebp) 
mov -32(%ebp), %edx
push %edx
mov %edx, -32(%ebp) 
push %ebp
call L2
add $8, %esp
pop %edx
pop %ecx
mov -28(%ebp), %edx
mov %eax, %edx
mov %edx, -28(%ebp) 
pop %eax
mov -28(%ebp), %edx
mov %edx, %edi
mov %edx, -28(%ebp) 
#IN MEM MOVE
mov %edi, (%esi)
L23:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN MEM
#IN MEM
mov -96(%ebp), %edx
mov %ebp, %edx
mov %edx, -96(%ebp) 
#IN CONST
mov -100(%ebp), %edx
mov $8, %edx
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
mov -88(%ebp), %eax
mov %edx, %eax
mov %edx, -92(%ebp) 
mov %eax, -88(%ebp) 
#IN CONST
mov -104(%ebp), %edx
mov $-4, %edx
mov %edx, -104(%ebp) 
mov -104(%ebp), %edx
mov -88(%ebp), %eax
add %edx, %eax
mov %edx, -104(%ebp) 
mov %eax, -88(%ebp) 
mov -88(%ebp), %edx
mov -84(%ebp), %eax
mov (%edx), %eax
mov %edx, -88(%ebp) 
mov %eax, -84(%ebp) 
mov -84(%ebp), %edx
push %edx
mov %edx, -84(%ebp) 
push %ebp
call L2
add $8, %esp
pop %edx
pop %ecx
mov -80(%ebp), %edx
mov %eax, %edx
mov %edx, -80(%ebp) 
pop %eax
mov -80(%ebp), %edx
mov -56(%ebp), %eax
mov %edx, %eax
mov %edx, -80(%ebp) 
mov %eax, -56(%ebp) 
#IN CJUMP
#IN CONST
mov -108(%ebp), %edx
mov $0, %edx
mov %edx, -108(%ebp) 
mov -108(%ebp), %edx
mov -56(%ebp), %eax
cmp %edx, %eax
mov %edx, -108(%ebp) 
mov %eax, -56(%ebp) 
jne L24
L22:
mov -4(%ebp), %edx
mov %edx, %eax
mov %edx, -4(%ebp) 
jmp L104
L24:
#IN REGMOVE
mov -4(%ebp), %edx
mov -112(%ebp), %eax
mov %edx, %eax
mov %edx, -4(%ebp) 
mov %eax, -112(%ebp) 
#IN CONST
mov -116(%ebp), %edx
mov $10, %edx
mov %edx, -116(%ebp) 
mov -116(%ebp), %edx
mov -112(%ebp), %eax
imul %edx, %eax
mov %edx, -116(%ebp) 
mov %eax, -112(%ebp) 
mov -112(%ebp), %edx
mov -64(%ebp), %eax
mov %edx, %eax
mov %edx, -112(%ebp) 
mov %eax, -64(%ebp) 
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN MEM
#IN MEM
mov -136(%ebp), %edx
mov %ebp, %edx
mov %edx, -136(%ebp) 
#IN CONST
mov -140(%ebp), %edx
mov $8, %edx
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
mov -128(%ebp), %eax
mov %edx, %eax
mov %edx, -132(%ebp) 
mov %eax, -128(%ebp) 
#IN CONST
mov -144(%ebp), %edx
mov $-4, %edx
mov %edx, -144(%ebp) 
mov -144(%ebp), %edx
mov -128(%ebp), %eax
add %edx, %eax
mov %edx, -144(%ebp) 
mov %eax, -128(%ebp) 
mov -128(%ebp), %edx
mov -124(%ebp), %eax
mov (%edx), %eax
mov %edx, -128(%ebp) 
mov %eax, -124(%ebp) 
mov -124(%ebp), %edx
push %edx
mov %edx, -124(%ebp) 
call ord
add $4, %esp
pop %edx
pop %ecx
mov -120(%ebp), %edx
mov %eax, %edx
mov %edx, -120(%ebp) 
pop %eax
mov -120(%ebp), %edx
mov -60(%ebp), %eax
mov %edx, %eax
mov %edx, -120(%ebp) 
mov %eax, -60(%ebp) 
#IN REGMOVE
mov -64(%ebp), %edx
mov -148(%ebp), %eax
mov %edx, %eax
mov %edx, -64(%ebp) 
mov %eax, -148(%ebp) 
mov -60(%ebp), %edx
mov -148(%ebp), %eax
add %edx, %eax
mov %edx, -60(%ebp) 
mov %eax, -148(%ebp) 
mov -148(%ebp), %edx
mov -72(%ebp), %eax
mov %edx, %eax
mov %edx, -148(%ebp) 
mov %eax, -72(%ebp) 
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov -156(%ebp), %edx
mov $L21, %edx
mov %edx, -156(%ebp) 
mov -156(%ebp), %edx
push %edx
mov %edx, -156(%ebp) 
call ord
add $4, %esp
pop %edx
pop %ecx
mov -152(%ebp), %edx
mov %eax, %edx
mov %edx, -152(%ebp) 
pop %eax
mov -152(%ebp), %edx
mov -68(%ebp), %eax
mov %edx, %eax
mov %edx, -152(%ebp) 
mov %eax, -68(%ebp) 
#IN REGMOVE
mov -72(%ebp), %edx
mov -160(%ebp), %eax
mov %edx, %eax
mov %edx, -72(%ebp) 
mov %eax, -160(%ebp) 
mov -68(%ebp), %edx
mov -160(%ebp), %eax
sub %edx, %eax
mov %edx, -68(%ebp) 
mov %eax, -160(%ebp) 
mov -160(%ebp), %edx
mov -4(%ebp), %eax
mov %edx, %eax
mov %edx, -160(%ebp) 
mov %eax, -4(%ebp) 
#IN REGMOVE
#IN MEM
mov -172(%ebp), %edx
mov %ebp, %edx
mov %edx, -172(%ebp) 
#IN CONST
mov -176(%ebp), %edx
mov $8, %edx
mov %edx, -176(%ebp) 
mov -176(%ebp), %edx
mov -172(%ebp), %eax
add %edx, %eax
mov %edx, -176(%ebp) 
mov %eax, -172(%ebp) 
mov -172(%ebp), %edx
mov -168(%ebp), %eax
mov (%edx), %eax
mov %edx, -172(%ebp) 
mov %eax, -168(%ebp) 
mov -168(%ebp), %edx
mov -164(%ebp), %eax
mov %edx, %eax
mov %edx, -168(%ebp) 
mov %eax, -164(%ebp) 
#IN CONST
mov -180(%ebp), %edx
mov $-4, %edx
mov %edx, -180(%ebp) 
mov -180(%ebp), %edx
mov -164(%ebp), %eax
add %edx, %eax
mov %edx, -180(%ebp) 
mov %eax, -164(%ebp) 
mov -164(%ebp), %edx
mov %edx, %ebx
mov %edx, -164(%ebp) 
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
call my_getchar
add $0, %esp
pop %edx
pop %ecx
mov -184(%ebp), %edx
mov %eax, %edx
mov %edx, -184(%ebp) 
pop %eax
mov -184(%ebp), %edx
mov -76(%ebp), %eax
mov %edx, %eax
mov %edx, -184(%ebp) 
mov %eax, -76(%ebp) 
#IN MEM MOVE
mov -76(%ebp), %edx
mov %edx, (%ebx)
mov %edx, -76(%ebp) 
jmp L23
L104:
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
sub $152, %esp
push %ebx
push %edi
push %esi
L19:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov -88(%ebp), %edx
mov $L12, %edx
mov %edx, -88(%ebp) 
mov -88(%ebp), %edx
push %edx
mov %edx, -88(%ebp) 
#IN MEM
#IN MEM
#IN MEM
mov -24(%ebp), %edx
mov %ebp, %edx
mov %edx, -24(%ebp) 
#IN CONST
mov -28(%ebp), %edx
mov $8, %edx
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
mov -16(%ebp), %eax
mov %edx, %eax
mov %edx, -20(%ebp) 
mov %eax, -16(%ebp) 
#IN CONST
mov -32(%ebp), %edx
mov $8, %edx
mov %edx, -32(%ebp) 
mov -32(%ebp), %edx
mov -16(%ebp), %eax
add %edx, %eax
mov %edx, -32(%ebp) 
mov %eax, -16(%ebp) 
mov -16(%ebp), %edx
mov -12(%ebp), %eax
mov (%edx), %eax
mov %edx, -16(%ebp) 
mov %eax, -12(%ebp) 
mov -12(%ebp), %edx
mov -8(%ebp), %eax
mov %edx, %eax
mov %edx, -12(%ebp) 
mov %eax, -8(%ebp) 
#IN CONST
mov -36(%ebp), %edx
mov $-4, %edx
mov %edx, -36(%ebp) 
mov -36(%ebp), %edx
mov -8(%ebp), %eax
add %edx, %eax
mov %edx, -36(%ebp) 
mov %eax, -8(%ebp) 
mov -8(%ebp), %edx
mov -4(%ebp), %eax
mov (%edx), %eax
mov %edx, -8(%ebp) 
mov %eax, -4(%ebp) 
mov -4(%ebp), %edx
push %edx
mov %edx, -4(%ebp) 
call stringEqual
add $8, %esp
pop %edx
pop %ecx
mov -92(%ebp), %edx
mov %eax, %edx
mov %edx, -92(%ebp) 
pop %eax
mov -92(%ebp), %edx
mov -100(%ebp), %eax
mov %edx, %eax
mov %edx, -92(%ebp) 
mov %eax, -100(%ebp) 
#IN CJUMP
#IN CONST
mov -40(%ebp), %edx
mov $1, %edx
mov %edx, -40(%ebp) 
mov -40(%ebp), %edx
mov -100(%ebp), %eax
cmp %edx, %eax
mov %edx, -40(%ebp) 
mov %eax, -100(%ebp) 
je L13
L14:
#IN REGMOVE
#IN CONST
mov $1, %edi
mov -104(%ebp), %edx
mov %edi, %edx
mov %edx, -104(%ebp) 
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov $L11, %ecx
push %ecx
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
mov $8, %edx
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
#IN CONST
mov -140(%ebp), %edx
mov $-4, %edx
mov %edx, -140(%ebp) 
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
push %edx
mov %edx, -108(%ebp) 
call stringEqual
add $8, %esp
pop %edx
pop %ecx
mov %eax, %ebx
pop %eax
mov %ebx, %esi
#IN CJUMP
#IN CONST
mov -144(%ebp), %edx
mov $1, %edx
mov %edx, -144(%ebp) 
mov -144(%ebp), %edx
cmp %edx, %esi
mov %edx, -144(%ebp) 
je L16
L17:
#IN REGMOVE
#IN CONST
mov -148(%ebp), %edx
mov $0, %edx
mov %edx, -148(%ebp) 
mov -148(%ebp), %edx
mov -104(%ebp), %eax
mov %edx, %eax
mov %edx, -148(%ebp) 
mov %eax, -104(%ebp) 
L16:
mov -104(%ebp), %edx
mov %edx, %ecx
mov %edx, -104(%ebp) 
L15:
#IN CJUMP
#IN CONST
mov -44(%ebp), %edx
mov $0, %edx
mov %edx, -44(%ebp) 
mov -44(%ebp), %edx
cmp %edx, %ecx
mov %edx, -44(%ebp) 
jne L20
L18:
#IN REGMOVE
#IN CONST
mov $0, %ebx
mov %ebx, %eax
jmp L107
L13:
#IN REGMOVE
#IN CONST
mov -48(%ebp), %edx
mov $1, %edx
mov %edx, -48(%ebp) 
mov -48(%ebp), %edx
mov %edx, %ecx
mov %edx, -48(%ebp) 
jmp L15
L20:
#IN REGMOVE
#IN MEM
#IN MEM
mov -68(%ebp), %edx
mov %ebp, %edx
mov %edx, -68(%ebp) 
#IN CONST
mov -72(%ebp), %edx
mov $8, %edx
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
#IN CONST
mov -76(%ebp), %edx
mov $8, %edx
mov %edx, -76(%ebp) 
mov -76(%ebp), %edx
mov -60(%ebp), %eax
add %edx, %eax
mov %edx, -76(%ebp) 
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
mov -80(%ebp), %edx
mov $-4, %edx
mov %edx, -80(%ebp) 
mov -80(%ebp), %edx
mov -52(%ebp), %eax
add %edx, %eax
mov %edx, -80(%ebp) 
mov %eax, -52(%ebp) 
mov -52(%ebp), %edx
mov %edx, %ebx
mov %edx, -52(%ebp) 
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
call my_getchar
add $0, %esp
pop %edx
pop %ecx
mov -84(%ebp), %edx
mov %eax, %edx
mov %edx, -84(%ebp) 
pop %eax
mov -84(%ebp), %edx
mov -96(%ebp), %eax
mov %edx, %eax
mov %edx, -84(%ebp) 
mov %eax, -96(%ebp) 
#IN MEM MOVE
mov -96(%ebp), %edx
mov %edx, (%ebx)
mov %edx, -96(%ebp) 
jmp L19
L107:
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
sub $120, %esp
push %ebx
push %edi
push %esi
L110:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN MEM
#IN MEM
#IN MEM
mov -36(%ebp), %edx
mov %ebp, %edx
mov %edx, -36(%ebp) 
#IN CONST
mov -40(%ebp), %edx
mov $8, %edx
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
mov -28(%ebp), %eax
mov %edx, %eax
mov %edx, -32(%ebp) 
mov %eax, -28(%ebp) 
#IN CONST
mov -44(%ebp), %edx
mov $8, %edx
mov %edx, -44(%ebp) 
mov -44(%ebp), %edx
mov -28(%ebp), %eax
add %edx, %eax
mov %edx, -44(%ebp) 
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
mov -48(%ebp), %edx
mov $-4, %edx
mov %edx, -48(%ebp) 
mov -48(%ebp), %edx
mov -20(%ebp), %eax
add %edx, %eax
mov %edx, -48(%ebp) 
mov %eax, -20(%ebp) 
mov -20(%ebp), %edx
mov -16(%ebp), %eax
mov (%edx), %eax
mov %edx, -20(%ebp) 
mov %eax, -16(%ebp) 
mov -16(%ebp), %edx
push %edx
mov %edx, -16(%ebp) 
call ord
add $4, %esp
pop %edx
pop %ecx
mov %eax, %ecx
pop %eax
mov %ecx, %ebx
mov %ebx, %esi
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov -56(%ebp), %edx
mov $L5, %edx
mov %edx, -56(%ebp) 
mov -56(%ebp), %edx
push %edx
mov %edx, -56(%ebp) 
call ord
add $4, %esp
pop %edx
pop %ecx
mov -52(%ebp), %edx
mov %eax, %edx
mov %edx, -52(%ebp) 
pop %eax
mov -52(%ebp), %edx
mov %edx, %edi
mov %edx, -52(%ebp) 
#IN CJUMP
cmp %edi, %esi
jge L6
L7:
#IN REGMOVE
#IN CONST
mov -116(%ebp), %edx
mov $0, %edx
mov %edx, -116(%ebp) 
mov -116(%ebp), %edx
mov -112(%ebp), %eax
mov %edx, %eax
mov %edx, -116(%ebp) 
mov %eax, -112(%ebp) 
L8:
mov -112(%ebp), %edx
mov %edx, %eax
mov %edx, -112(%ebp) 
jmp L109
L6:
#IN REGMOVE
#IN CONST
mov -60(%ebp), %edx
mov $1, %edx
mov %edx, -60(%ebp) 
mov -60(%ebp), %edx
mov %edx, %ecx
mov %edx, -60(%ebp) 
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN MEM
#IN MEM
#IN MEM
mov -88(%ebp), %edx
mov %ebp, %edx
mov %edx, -88(%ebp) 
#IN CONST
mov -92(%ebp), %edx
mov $8, %edx
mov %edx, -92(%ebp) 
mov -92(%ebp), %edx
mov -88(%ebp), %eax
add %edx, %eax
mov %edx, -92(%ebp) 
mov %eax, -88(%ebp) 
mov -88(%ebp), %edx
mov -84(%ebp), %eax
mov (%edx), %eax
mov %edx, -88(%ebp) 
mov %eax, -84(%ebp) 
mov -84(%ebp), %edx
mov -80(%ebp), %eax
mov %edx, %eax
mov %edx, -84(%ebp) 
mov %eax, -80(%ebp) 
#IN CONST
mov -96(%ebp), %edx
mov $8, %edx
mov %edx, -96(%ebp) 
mov -96(%ebp), %edx
mov -80(%ebp), %eax
add %edx, %eax
mov %edx, -96(%ebp) 
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
mov -100(%ebp), %edx
mov $-4, %edx
mov %edx, -100(%ebp) 
mov -100(%ebp), %edx
mov -72(%ebp), %eax
add %edx, %eax
mov %edx, -100(%ebp) 
mov %eax, -72(%ebp) 
mov -72(%ebp), %edx
mov -68(%ebp), %eax
mov (%edx), %eax
mov %edx, -72(%ebp) 
mov %eax, -68(%ebp) 
mov -68(%ebp), %edx
push %edx
mov %edx, -68(%ebp) 
call ord
add $4, %esp
pop %edx
pop %ecx
mov -64(%ebp), %edx
mov %eax, %edx
mov %edx, -64(%ebp) 
pop %eax
mov -64(%ebp), %edx
mov -12(%ebp), %eax
mov %edx, %eax
mov %edx, -64(%ebp) 
mov %eax, -12(%ebp) 
mov -12(%ebp), %edx
mov -8(%ebp), %eax
mov %edx, %eax
mov %edx, -12(%ebp) 
mov %eax, -8(%ebp) 
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov -108(%ebp), %edx
mov $L4, %edx
mov %edx, -108(%ebp) 
mov -108(%ebp), %edx
push %edx
mov %edx, -108(%ebp) 
call ord
add $4, %esp
pop %edx
pop %ecx
mov -104(%ebp), %edx
mov %eax, %edx
mov %edx, -104(%ebp) 
pop %eax
mov -104(%ebp), %edx
mov -4(%ebp), %eax
mov %edx, %eax
mov %edx, -104(%ebp) 
mov %eax, -4(%ebp) 
#IN CJUMP
mov -4(%ebp), %edx
mov -8(%ebp), %eax
cmp %edx, %eax
mov %edx, -4(%ebp) 
mov %eax, -8(%ebp) 
jle L9
L10:
#IN REGMOVE
#IN CONST
mov $0, %esi
mov %esi, %ecx
L9:
mov -112(%ebp), %edx
mov %ecx, %edx
mov %edx, -112(%ebp) 
jmp L8
L109:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
