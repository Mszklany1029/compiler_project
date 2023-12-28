.global tigermain

.data
L14:
.long 18
.ascii "END OF NESTED FOR\n" 
L9:
.long 19
.ascii "BACK IN OUTER LOOP\n" 
L4:
.long 11
.ascii "INNER LOOP\n" 
L2:
.long 11
.ascii "OUTER LOOP\n" 

.text
tigermain:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $52, %esp
push %ebx
push %edi
push %esi
L16:
#IN REGMOVE
#IN CONST
mov $0, %esi
mov -8(%ebp), %edx
mov %esi, %edx
mov %edx, -8(%ebp) 
#IN REGMOVE
#IN CONST
mov $3, %ecx
mov -4(%ebp), %edx
mov %ecx, %edx
mov %edx, -4(%ebp) 
#IN CJUMP
#IN CONST
mov $3, %edi
#IN CONST
mov $0, %ebx
cmp %edi, %ebx
jle L10
L12:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov -16(%ebp), %edx
mov $L14, %edx
mov %edx, -16(%ebp) 
mov -16(%ebp), %edx
push %edx
mov %edx, -16(%ebp) 
call print
add $4, %esp
pop %edx
pop %ecx
mov -12(%ebp), %edx
mov %eax, %edx
mov %edx, -12(%ebp) 
pop %eax
mov -12(%ebp), %edx
mov %edx, %eax
mov %edx, -12(%ebp) 
jmp L15
L10:
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov -20(%ebp), %edx
mov $L2, %edx
mov %edx, -20(%ebp) 
mov -20(%ebp), %edx
push %edx
mov %edx, -20(%ebp) 
call print
add $4, %esp
pop %edx
pop %ecx
mov %eax, %ecx
pop %eax
#IN REGMOVE
#IN CONST
mov -24(%ebp), %edx
mov $0, %edx
mov %edx, -24(%ebp) 
mov -24(%ebp), %edx
mov %edx, %ebx
mov %edx, -24(%ebp) 
#IN REGMOVE
#IN CONST
mov -28(%ebp), %edx
mov $3, %edx
mov %edx, -28(%ebp) 
mov -28(%ebp), %edx
mov -48(%ebp), %eax
mov %edx, %eax
mov %edx, -28(%ebp) 
mov %eax, -48(%ebp) 
#IN CJUMP
#IN CONST
mov -32(%ebp), %edx
mov $3, %edx
mov %edx, -32(%ebp) 
#IN CONST
mov -36(%ebp), %edx
mov $0, %edx
mov %edx, -36(%ebp) 
mov -32(%ebp), %edx
mov -36(%ebp), %eax
cmp %edx, %eax
mov %edx, -32(%ebp) 
mov %eax, -36(%ebp) 
jle L5
L7:
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov -40(%ebp), %edx
mov $L9, %edx
mov %edx, -40(%ebp) 
mov -40(%ebp), %edx
push %edx
mov %edx, -40(%ebp) 
call print
add $4, %esp
pop %edx
pop %ecx
mov %eax, %esi
pop %eax
#IN CJUMP
mov -4(%ebp), %edx
mov -8(%ebp), %eax
cmp %edx, %eax
mov %edx, -4(%ebp) 
mov %eax, -8(%ebp) 
jge L12
L13:
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
jmp L10
L5:
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov -44(%ebp), %edx
mov $L4, %edx
mov %edx, -44(%ebp) 
mov -44(%ebp), %edx
push %edx
mov %edx, -44(%ebp) 
call print
add $4, %esp
pop %edx
pop %ecx
mov %eax, %esi
pop %eax
#IN CJUMP
mov -48(%ebp), %edx
cmp %edx, %ebx
mov %edx, -48(%ebp) 
jge L7
L8:
#IN REGMOVE
mov %ebx, %edi
#IN CONST
mov $1, %ecx
add %ecx, %edi
mov %edi, %ebx
jmp L5
L15:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
