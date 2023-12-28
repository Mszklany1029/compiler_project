.global tigermain

.data
L1777:
.long 69
.ascii "Enter 2 sets of points as a list of 4 numbers like so: x1 y1 x2 y2 a\n" 
L1747:
.long 1
.ascii " " 
L1741:
.long 1
.ascii " " 
L1740:
.long 1
.ascii "\n" 
L1733:
.long 1
.ascii "0" 
L1732:
.long 1
.ascii "-" 
L1729:
.long 1
.ascii "0" 
L1712:
.long 1
.ascii "0" 
L1703:
.long 1
.ascii " " 
L1702:
.long 1
.ascii "\n" 
L1696:
.long 1
.ascii "0" 
L1695:
.long 1
.ascii "9" 

.text
tigermain:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $64, %esp
push %ebx
push %edi
push %esi
L1779:
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
call L1716
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
call L1720
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
call L1721
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
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov -48(%ebp), %edx
mov $L1777, %edx
mov %edx, -48(%ebp) 
mov -48(%ebp), %edx
push %edx
mov %edx, -48(%ebp) 
call print
add $4, %esp
pop %edx
pop %ecx
mov -44(%ebp), %edx
mov %eax, %edx
mov %edx, -44(%ebp) 
pop %eax
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
call L1724
add $8, %esp
pop %edx
pop %ecx
mov -52(%ebp), %edx
mov %eax, %edx
mov %edx, -52(%ebp) 
pop %eax
mov -52(%ebp), %edx
mov -12(%ebp), %eax
mov %edx, %eax
mov %edx, -52(%ebp) 
mov %eax, -12(%ebp) 
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN CONST
mov -60(%ebp), %edx
mov $2, %edx
mov %edx, -60(%ebp) 
mov -60(%ebp), %edx
push %edx
mov %edx, -60(%ebp) 
mov -12(%ebp), %edx
push %edx
mov %edx, -12(%ebp) 
mov -16(%ebp), %edx
push %edx
mov %edx, -16(%ebp) 
call L1719
add $12, %esp
pop %edx
pop %ecx
mov -56(%ebp), %edx
mov %eax, %edx
mov %edx, -56(%ebp) 
pop %eax
mov -56(%ebp), %edx
mov %edx, %eax
mov %edx, -56(%ebp) 
jmp L1778
L1778:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L1724:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $236, %esp
push %ebx
push %edi
push %esi
L1782:
#IN REGMOVE
#IN MEM
#IN MEM
mov -28(%ebp), %edx
mov %ebp, %edx
mov %edx, -28(%ebp) 
#IN CONST
mov -32(%ebp), %edx
mov $12, %edx
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
mov -40(%ebp), %edx
mov $0, %edx
mov %edx, -40(%ebp) 
mov -40(%ebp), %edx
mov -36(%ebp), %eax
mov %edx, %eax
mov %edx, -40(%ebp) 
mov %eax, -36(%ebp) 
#IN CONST
mov -44(%ebp), %edx
mov $4, %edx
mov %edx, -44(%ebp) 
mov -44(%ebp), %edx
mov -36(%ebp), %eax
imul %edx, %eax
mov %edx, -44(%ebp) 
mov %eax, -36(%ebp) 
mov -36(%ebp), %edx
mov -20(%ebp), %eax
add %edx, %eax
mov %edx, -36(%ebp) 
mov %eax, -20(%ebp) 
mov -20(%ebp), %edx
mov -16(%ebp), %eax
mov (%edx), %eax
mov %edx, -20(%ebp) 
mov %eax, -16(%ebp) 
mov -16(%ebp), %edx
mov %edx, %ebx
mov %edx, -16(%ebp) 
#IN REGMOVE
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
#IN CONST
mov -72(%ebp), %edx
mov $1, %edx
mov %edx, -72(%ebp) 
mov -72(%ebp), %edx
mov -68(%ebp), %eax
mov %edx, %eax
mov %edx, -72(%ebp) 
mov %eax, -68(%ebp) 
#IN CONST
mov -76(%ebp), %edx
mov $4, %edx
mov %edx, -76(%ebp) 
mov -76(%ebp), %edx
mov -68(%ebp), %eax
imul %edx, %eax
mov %edx, -76(%ebp) 
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
mov %edx, %edi
mov %edx, -48(%ebp) 
#IN REGMOVE
#IN MEM
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
mov -84(%ebp), %eax
mov %edx, %eax
mov %edx, -88(%ebp) 
mov %eax, -84(%ebp) 
#IN CONST
mov -104(%ebp), %edx
mov $2, %edx
mov %edx, -104(%ebp) 
mov -104(%ebp), %edx
mov -100(%ebp), %eax
mov %edx, %eax
mov %edx, -104(%ebp) 
mov %eax, -100(%ebp) 
#IN CONST
mov -108(%ebp), %edx
mov $4, %edx
mov %edx, -108(%ebp) 
mov -108(%ebp), %edx
mov -100(%ebp), %eax
imul %edx, %eax
mov %edx, -108(%ebp) 
mov %eax, -100(%ebp) 
mov -100(%ebp), %edx
mov -84(%ebp), %eax
add %edx, %eax
mov %edx, -100(%ebp) 
mov %eax, -84(%ebp) 
mov -84(%ebp), %edx
mov -80(%ebp), %eax
mov (%edx), %eax
mov %edx, -84(%ebp) 
mov %eax, -80(%ebp) 
mov -80(%ebp), %edx
mov %edx, %esi
mov %edx, -80(%ebp) 
#IN REGMOVE
#IN MEM
#IN MEM
mov -124(%ebp), %edx
mov %ebp, %edx
mov %edx, -124(%ebp) 
#IN CONST
mov -128(%ebp), %edx
mov $12, %edx
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
mov -136(%ebp), %edx
mov $3, %edx
mov %edx, -136(%ebp) 
mov -136(%ebp), %edx
mov -132(%ebp), %eax
mov %edx, %eax
mov %edx, -136(%ebp) 
mov %eax, -132(%ebp) 
#IN CONST
mov -140(%ebp), %edx
mov $4, %edx
mov %edx, -140(%ebp) 
mov -140(%ebp), %edx
mov -132(%ebp), %eax
imul %edx, %eax
mov %edx, -140(%ebp) 
mov %eax, -132(%ebp) 
mov -132(%ebp), %edx
mov -116(%ebp), %eax
add %edx, %eax
mov %edx, -132(%ebp) 
mov %eax, -116(%ebp) 
mov -116(%ebp), %edx
mov -112(%ebp), %eax
mov (%edx), %eax
mov %edx, -116(%ebp) 
mov %eax, -112(%ebp) 
mov -112(%ebp), %edx
mov %edx, %ecx
mov %edx, -112(%ebp) 
#IN REGMOVE
#IN CONST
mov -144(%ebp), %edx
mov $0, %edx
mov %edx, -144(%ebp) 
mov -144(%ebp), %edx
mov -4(%ebp), %eax
mov %edx, %eax
mov %edx, -144(%ebp) 
mov %eax, -4(%ebp) 
#IN REGMOVE
#IN CONST
mov -148(%ebp), %edx
mov $0, %edx
mov %edx, -148(%ebp) 
mov -148(%ebp), %edx
mov -8(%ebp), %eax
mov %edx, %eax
mov %edx, -148(%ebp) 
mov %eax, -8(%ebp) 
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN CONST
mov -156(%ebp), %edx
mov $0, %edx
mov %edx, -156(%ebp) 
mov -156(%ebp), %edx
push %edx
mov %edx, -156(%ebp) 
#IN CONST
mov -160(%ebp), %edx
mov $2, %edx
mov %edx, -160(%ebp) 
mov -160(%ebp), %edx
push %edx
mov %edx, -160(%ebp) 
call initArray
add $8, %esp
pop %edx
pop %ecx
mov -152(%ebp), %edx
mov %eax, %edx
mov %edx, -152(%ebp) 
pop %eax
mov -152(%ebp), %edx
mov -12(%ebp), %eax
mov %edx, %eax
mov %edx, -152(%ebp) 
mov %eax, -12(%ebp) 
#IN REGMOVE
#IN DIV
push %eax
push %edx
push %ecx
mov -176(%ebp), %edx
mov %ebx, %edx
mov %edx, -176(%ebp) 
mov -176(%ebp), %edx
add %esi, %edx
mov %edx, -176(%ebp) 
mov -176(%ebp), %edx
mov -168(%ebp), %eax
mov %edx, %eax
mov %edx, -176(%ebp) 
mov %eax, -168(%ebp) 
#IN CONST
mov -180(%ebp), %edx
mov $2, %edx
mov %edx, -180(%ebp) 
mov -180(%ebp), %edx
mov -172(%ebp), %eax
mov %edx, %eax
mov %edx, -180(%ebp) 
mov %eax, -172(%ebp) 
mov -168(%ebp), %edx
mov %edx, %eax
mov %edx, -168(%ebp) 
mov -172(%ebp), %edx
mov %edx, %ecx
mov %edx, -172(%ebp) 
cdq
idiv %ecx
pop %ecx
mov -164(%ebp), %edx
mov %eax, %edx
mov %edx, -164(%ebp) 
pop %edx
pop %eax
mov -164(%ebp), %edx
mov -4(%ebp), %eax
mov %edx, %eax
mov %edx, -164(%ebp) 
mov %eax, -4(%ebp) 
#IN REGMOVE
#IN DIV
push %eax
push %edx
push %ecx
mov -196(%ebp), %edx
mov %edi, %edx
mov %edx, -196(%ebp) 
mov -196(%ebp), %edx
add %ecx, %edx
mov %edx, -196(%ebp) 
mov -196(%ebp), %edx
mov -188(%ebp), %eax
mov %edx, %eax
mov %edx, -196(%ebp) 
mov %eax, -188(%ebp) 
#IN CONST
mov -200(%ebp), %edx
mov $2, %edx
mov %edx, -200(%ebp) 
mov -200(%ebp), %edx
mov -192(%ebp), %eax
mov %edx, %eax
mov %edx, -200(%ebp) 
mov %eax, -192(%ebp) 
mov -188(%ebp), %edx
mov %edx, %eax
mov %edx, -188(%ebp) 
mov -192(%ebp), %edx
mov %edx, %ecx
mov %edx, -192(%ebp) 
cdq
idiv %ecx
pop %ecx
mov -184(%ebp), %edx
mov %eax, %edx
mov %edx, -184(%ebp) 
pop %edx
pop %eax
mov -184(%ebp), %edx
mov -8(%ebp), %eax
mov %edx, %eax
mov %edx, -184(%ebp) 
mov %eax, -8(%ebp) 
#IN MEM MOVE
mov -12(%ebp), %edx
mov -204(%ebp), %eax
mov %edx, %eax
mov %edx, -12(%ebp) 
mov %eax, -204(%ebp) 
#IN CONST
mov -212(%ebp), %edx
mov $0, %edx
mov %edx, -212(%ebp) 
mov -212(%ebp), %edx
mov -208(%ebp), %eax
mov %edx, %eax
mov %edx, -212(%ebp) 
mov %eax, -208(%ebp) 
#IN CONST
mov -216(%ebp), %edx
mov $4, %edx
mov %edx, -216(%ebp) 
mov -216(%ebp), %edx
mov -208(%ebp), %eax
imul %edx, %eax
mov %edx, -216(%ebp) 
mov %eax, -208(%ebp) 
mov -208(%ebp), %edx
mov -204(%ebp), %eax
add %edx, %eax
mov %edx, -208(%ebp) 
mov %eax, -204(%ebp) 
mov -4(%ebp), %edx
mov -204(%ebp), %eax
mov %edx, (%eax)
mov %edx, -4(%ebp) 
mov %eax, -204(%ebp) 
#IN MEM MOVE
mov -12(%ebp), %edx
mov -220(%ebp), %eax
mov %edx, %eax
mov %edx, -12(%ebp) 
mov %eax, -220(%ebp) 
#IN CONST
mov -228(%ebp), %edx
mov $1, %edx
mov %edx, -228(%ebp) 
mov -228(%ebp), %edx
mov -224(%ebp), %eax
mov %edx, %eax
mov %edx, -228(%ebp) 
mov %eax, -224(%ebp) 
#IN CONST
mov -232(%ebp), %edx
mov $4, %edx
mov %edx, -232(%ebp) 
mov -232(%ebp), %edx
mov -224(%ebp), %eax
imul %edx, %eax
mov %edx, -232(%ebp) 
mov %eax, -224(%ebp) 
mov -224(%ebp), %edx
mov -220(%ebp), %eax
add %edx, %eax
mov %edx, -224(%ebp) 
mov %eax, -220(%ebp) 
mov -8(%ebp), %edx
mov -220(%ebp), %eax
mov %edx, (%eax)
mov %edx, -8(%ebp) 
mov %eax, -220(%ebp) 
mov -12(%ebp), %edx
mov %edx, %eax
mov %edx, -12(%ebp) 
jmp L1781
L1781:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L1723:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $164, %esp
push %ebx
push %edi
push %esi
L1785:
#IN REGMOVE
#IN DIV
push %eax
push %edx
push %ecx
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
mov (%edx), %esi
mov %edx, -16(%ebp) 
mov %esi, %edi
#IN CONST
mov -24(%ebp), %edx
mov $2, %edx
mov %edx, -24(%ebp) 
mov -24(%ebp), %edx
mov %edx, %ebx
mov %edx, -24(%ebp) 
mov %edi, %eax
mov %ebx, %ecx
cdq
idiv %ecx
pop %ecx
mov %eax, %ecx
pop %edx
pop %eax
mov -8(%ebp), %edx
mov %ecx, %edx
mov %edx, -8(%ebp) 
#IN REGMOVE
#IN DIV
push %eax
push %edx
push %ecx
mov -8(%ebp), %edx
mov -40(%ebp), %eax
mov %edx, %eax
mov %edx, -8(%ebp) 
mov %eax, -40(%ebp) 
#IN DIV
push %eax
push %edx
push %ecx
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
mov -48(%ebp), %eax
mov %edx, %eax
mov %edx, -56(%ebp) 
mov %eax, -48(%ebp) 
mov -8(%ebp), %edx
mov -52(%ebp), %eax
mov %edx, %eax
mov %edx, -8(%ebp) 
mov %eax, -52(%ebp) 
mov -48(%ebp), %edx
mov %edx, %eax
mov %edx, -48(%ebp) 
mov -52(%ebp), %edx
mov %edx, %ecx
mov %edx, -52(%ebp) 
cdq
idiv %ecx
pop %ecx
mov -44(%ebp), %edx
mov %eax, %edx
mov %edx, -44(%ebp) 
pop %edx
pop %eax
mov -44(%ebp), %edx
mov -40(%ebp), %eax
add %edx, %eax
mov %edx, -44(%ebp) 
mov %eax, -40(%ebp) 
mov -40(%ebp), %edx
mov -32(%ebp), %eax
mov %edx, %eax
mov %edx, -40(%ebp) 
mov %eax, -32(%ebp) 
#IN CONST
mov -68(%ebp), %edx
mov $2, %edx
mov %edx, -68(%ebp) 
mov -68(%ebp), %edx
mov -36(%ebp), %eax
mov %edx, %eax
mov %edx, -68(%ebp) 
mov %eax, -36(%ebp) 
mov -32(%ebp), %edx
mov %edx, %eax
mov %edx, -32(%ebp) 
mov -36(%ebp), %edx
mov %edx, %ecx
mov %edx, -36(%ebp) 
cdq
idiv %ecx
pop %ecx
mov -28(%ebp), %edx
mov %eax, %edx
mov %edx, -28(%ebp) 
pop %edx
pop %eax
mov -28(%ebp), %edx
mov -4(%ebp), %eax
mov %edx, %eax
mov %edx, -28(%ebp) 
mov %eax, -4(%ebp) 
#IN REGMOVE
#IN CONST
mov -72(%ebp), %edx
mov $1, %edx
mov %edx, -72(%ebp) 
mov -72(%ebp), %edx
mov -12(%ebp), %eax
mov %edx, %eax
mov %edx, -72(%ebp) 
mov %eax, -12(%ebp) 
#IN CJUMP
#IN CONST
mov -76(%ebp), %edx
mov $1, %edx
mov %edx, -76(%ebp) 
#IN MEM
mov -84(%ebp), %edx
mov %ebp, %edx
mov %edx, -84(%ebp) 
#IN CONST
mov -88(%ebp), %edx
mov $12, %edx
mov %edx, -88(%ebp) 
mov -88(%ebp), %edx
mov -84(%ebp), %eax
add %edx, %eax
mov %edx, -88(%ebp) 
mov %eax, -84(%ebp) 
mov -84(%ebp), %edx
mov -80(%ebp), %eax
mov (%edx), %eax
mov %edx, -84(%ebp) 
mov %eax, -80(%ebp) 
mov -76(%ebp), %edx
mov -80(%ebp), %eax
cmp %edx, %eax
mov %edx, -76(%ebp) 
mov %eax, -80(%ebp) 
jle L1766
L1767:
#IN REGMOVE
#IN CONST
mov -112(%ebp), %edx
mov $0, %edx
mov %edx, -112(%ebp) 
mov -112(%ebp), %edx
mov -12(%ebp), %eax
mov %edx, %eax
mov %edx, -112(%ebp) 
mov %eax, -12(%ebp) 
L1766:
#IN CJUMP
#IN CONST
mov -92(%ebp), %edx
mov $0, %edx
mov %edx, -92(%ebp) 
mov -92(%ebp), %edx
mov -12(%ebp), %eax
cmp %edx, %eax
mov %edx, -92(%ebp) 
mov %eax, -12(%ebp) 
jne L1768
L1769:
L1764:
#IN REGMOVE
#IN CONST
mov $1, %ebx
mov %ebx, %esi
#IN CJUMP
mov -8(%ebp), %edx
mov -4(%ebp), %eax
cmp %edx, %eax
mov %edx, -8(%ebp) 
mov %eax, -4(%ebp) 
jl L1761
L1762:
#IN REGMOVE
#IN CONST
mov $0, %ecx
mov %ecx, %esi
L1761:
#IN CJUMP
#IN CONST
mov -160(%ebp), %edx
mov $0, %edx
mov %edx, -160(%ebp) 
mov -160(%ebp), %edx
cmp %edx, %esi
mov %edx, -160(%ebp) 
jne L1765
L1763:
#IN REGMOVE
#IN CONST
mov $0, %edi
mov %edi, %ecx
L1770:
mov -8(%ebp), %edx
mov %edx, %eax
mov %edx, -8(%ebp) 
jmp L1784
L1768:
#IN REGMOVE
#IN MEM
mov -100(%ebp), %edx
mov %ebp, %edx
mov %edx, -100(%ebp) 
#IN CONST
mov -104(%ebp), %edx
mov $12, %edx
mov %edx, -104(%ebp) 
mov -104(%ebp), %edx
mov -100(%ebp), %eax
add %edx, %eax
mov %edx, -104(%ebp) 
mov %eax, -100(%ebp) 
mov -100(%ebp), %edx
mov -96(%ebp), %eax
mov (%edx), %eax
mov %edx, -100(%ebp) 
mov %eax, -96(%ebp) 
mov -96(%ebp), %edx
mov -8(%ebp), %eax
mov %edx, %eax
mov %edx, -96(%ebp) 
mov %eax, -8(%ebp) 
#IN REGMOVE
#IN CONST
mov -108(%ebp), %edx
mov $0, %edx
mov %edx, -108(%ebp) 
mov -108(%ebp), %edx
mov %edx, %ecx
mov %edx, -108(%ebp) 
jmp L1770
L1765:
mov -4(%ebp), %edx
mov -8(%ebp), %eax
mov %edx, %eax
mov %edx, -4(%ebp) 
mov %eax, -8(%ebp) 
#IN REGMOVE
#IN DIV
push %eax
push %edx
push %ecx
mov -8(%ebp), %edx
mov -124(%ebp), %eax
mov %edx, %eax
mov %edx, -8(%ebp) 
mov %eax, -124(%ebp) 
#IN DIV
push %eax
push %edx
push %ecx
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
mov -132(%ebp), %eax
mov %edx, %eax
mov %edx, -140(%ebp) 
mov %eax, -132(%ebp) 
mov -8(%ebp), %edx
mov -136(%ebp), %eax
mov %edx, %eax
mov %edx, -8(%ebp) 
mov %eax, -136(%ebp) 
mov -132(%ebp), %edx
mov %edx, %eax
mov %edx, -132(%ebp) 
mov -136(%ebp), %edx
mov %edx, %ecx
mov %edx, -136(%ebp) 
cdq
idiv %ecx
pop %ecx
mov -128(%ebp), %edx
mov %eax, %edx
mov %edx, -128(%ebp) 
pop %edx
pop %eax
mov -128(%ebp), %edx
mov -124(%ebp), %eax
add %edx, %eax
mov %edx, -128(%ebp) 
mov %eax, -124(%ebp) 
mov -124(%ebp), %edx
mov -116(%ebp), %eax
mov %edx, %eax
mov %edx, -124(%ebp) 
mov %eax, -116(%ebp) 
#IN CONST
mov -152(%ebp), %edx
mov $2, %edx
mov %edx, -152(%ebp) 
mov -152(%ebp), %edx
mov -120(%ebp), %eax
mov %edx, %eax
mov %edx, -152(%ebp) 
mov %eax, -120(%ebp) 
mov -116(%ebp), %edx
mov %edx, %eax
mov %edx, -116(%ebp) 
mov -120(%ebp), %edx
mov %edx, %ecx
mov %edx, -120(%ebp) 
cdq
idiv %ecx
pop %ecx
mov -156(%ebp), %edx
mov %eax, %edx
mov %edx, -156(%ebp) 
pop %edx
pop %eax
mov -156(%ebp), %edx
mov -4(%ebp), %eax
mov %edx, %eax
mov %edx, -156(%ebp) 
mov %eax, -4(%ebp) 
jmp L1764
L1784:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L1722:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $16, %esp
push %ebx
push %edi
push %esi
L1788:
#IN REGMOVE
#IN MEM
mov %ebp, %esi
#IN CONST
mov $12, %ecx
add %ecx, %esi
mov (%esi), %edi
mov %edi, %ebx
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
imul %edx, %ebx
mov %edx, -4(%ebp) 
mov %ebx, %eax
jmp L1787
L1787:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L1721:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $156, %esp
push %ebx
push %edi
push %esi
L1791:
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
call L1720
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
call L1720
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
jle L1757
L1759:
mov -12(%ebp), %edx
mov %edx, %eax
mov %edx, -12(%ebp) 
jmp L1790
L1757:
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
jge L1759
L1760:
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
jmp L1757
L1790:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L1720:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $64, %esp
push %ebx
push %edi
push %esi
L1794:
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
je L1752
L1753:
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
call L1720
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
L1754:
mov -8(%ebp), %edx
mov %edx, %eax
mov %edx, -8(%ebp) 
jmp L1793
L1752:
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
jmp L1754
L1793:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L1719:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $92, %esp
push %ebx
push %edi
push %esi
L1797:
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
jle L1748
L1750:
#IN REGMOVE
#IN CONST
mov -44(%ebp), %edx
mov $0, %edx
mov %edx, -44(%ebp) 
mov -44(%ebp), %edx
mov %edx, %eax
mov %edx, -44(%ebp) 
jmp L1796
L1748:
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
call L1717
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
mov $L1747, %edx
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
jge L1750
L1751:
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
jmp L1748
L1796:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L1718:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $104, %esp
push %ebx
push %edi
push %esi
L1800:
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
je L1742
L1743:
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
call L1717
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
mov $L1741, %edx
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
call L1718
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
L1744:
mov -12(%ebp), %edx
mov %edx, %eax
mov %edx, -12(%ebp) 
jmp L1799
L1742:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov -8(%ebp), %edx
mov $L1740, %edx
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
jmp L1744
L1799:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L1717:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $64, %esp
push %ebx
push %edi
push %esi
L1803:
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
jl L1737
L1738:
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
jg L1734
L1735:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov $L1733, %edi
push %edi
call print
add $4, %esp
pop %edx
pop %ecx
mov %eax, %esi
pop %eax
mov %esi, %ecx
L1736:
mov %ecx, %ebx
L1739:
mov %ebx, %eax
jmp L1802
L1737:
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov -4(%ebp), %edx
mov $L1732, %edx
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
call L1728
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
jmp L1739
L1734:
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
call L1728
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
jmp L1736
L1802:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L1728:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $128, %esp
push %ebx
push %edi
push %esi
L1806:
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
jg L1730
L1731:
#IN REGMOVE
#IN CONST
mov -16(%ebp), %edx
mov $0, %edx
mov %edx, -16(%ebp) 
mov -16(%ebp), %edx
mov %edx, %eax
mov %edx, -16(%ebp) 
jmp L1805
L1730:
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
call L1728
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
mov $L1729, %edx
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
jmp L1731
L1805:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L1716:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $104, %esp
push %ebx
push %edi
push %esi
L1809:
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
call L1692
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
jne L1725
L1726:
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
L1727:
mov -96(%ebp), %edx
mov %edx, %eax
mov %edx, -96(%ebp) 
jmp L1808
L1725:
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
call L1716
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
jmp L1727
L1808:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L1692:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $188, %esp
push %ebx
push %edi
push %esi
L1812:
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
call L1694
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
call L1693
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
L1714:
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
call L1693
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
jne L1715
L1713:
mov -4(%ebp), %edx
mov %edx, %eax
mov %edx, -4(%ebp) 
jmp L1811
L1715:
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
mov $L1712, %edx
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
jmp L1714
L1811:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L1694:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $152, %esp
push %ebx
push %edi
push %esi
L1710:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov -88(%ebp), %edx
mov $L1703, %edx
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
je L1704
L1705:
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
mov $L1702, %ecx
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
je L1707
L1708:
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
L1707:
mov -104(%ebp), %edx
mov %edx, %ecx
mov %edx, -104(%ebp) 
L1706:
#IN CJUMP
#IN CONST
mov -44(%ebp), %edx
mov $0, %edx
mov %edx, -44(%ebp) 
mov -44(%ebp), %edx
cmp %edx, %ecx
mov %edx, -44(%ebp) 
jne L1711
L1709:
#IN REGMOVE
#IN CONST
mov $0, %ebx
mov %ebx, %eax
jmp L1814
L1704:
#IN REGMOVE
#IN CONST
mov -48(%ebp), %edx
mov $1, %edx
mov %edx, -48(%ebp) 
mov -48(%ebp), %edx
mov %edx, %ecx
mov %edx, -48(%ebp) 
jmp L1706
L1711:
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
jmp L1710
L1814:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L1693:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $120, %esp
push %ebx
push %edi
push %esi
L1817:
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
mov $L1696, %edx
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
jge L1697
L1698:
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
L1699:
mov -112(%ebp), %edx
mov %edx, %eax
mov %edx, -112(%ebp) 
jmp L1816
L1697:
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
mov $L1695, %edx
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
jle L1700
L1701:
#IN REGMOVE
#IN CONST
mov $0, %esi
mov %esi, %ecx
L1700:
mov -112(%ebp), %edx
mov %ecx, %edx
mov %edx, -112(%ebp) 
jmp L1699
L1816:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
