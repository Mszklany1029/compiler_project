.global tigermain

.data
L12:
.long 8
.ascii "REC ALSO" 
L11:
.long 1
.ascii "\n" 
L10:
.long 4
.ascii "REC!" 

.text
tigermain:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $16, %esp
push %ebx
push %edi
push %esi
L14:
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov $L10, %edi
push %edi
#IN CONST
mov $1, %esi
push %esi
push %ebp
call L1
add $12, %esp
pop %edx
pop %ecx
mov %eax, %ebx
pop %eax
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov -4(%ebp), %edx
mov $L11, %edx
mov %edx, -4(%ebp) 
mov -4(%ebp), %edx
push %edx
mov %edx, -4(%ebp) 
call print
add $4, %esp
pop %edx
pop %ecx
mov %eax, %ecx
pop %eax
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov -12(%ebp), %edx
mov $L12, %edx
mov %edx, -12(%ebp) 
mov -12(%ebp), %edx
push %edx
mov %edx, -12(%ebp) 
push %ebp
call L2
add $8, %esp
pop %edx
pop %ecx
mov -8(%ebp), %edx
mov %eax, %edx
mov %edx, -8(%ebp) 
pop %eax
mov -8(%ebp), %edx
mov %edx, %eax
mov %edx, -8(%ebp) 
jmp L13
L13:
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
sub $4, %esp
push %ebx
push %edi
push %esi
L17:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN CONST
mov $1, %edi
push %edi
push %ebp
call L6
add $8, %esp
pop %edx
pop %ecx
mov %eax, %ebx
pop %eax
mov %ebx, %eax
jmp L16
L16:
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
sub $56, %esp
push %ebx
push %edi
push %esi
L20:
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
je L7
L8:
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
call L6
add $8, %esp
pop %edx
pop %ecx
mov -36(%ebp), %edx
mov %eax, %edx
mov %edx, -36(%ebp) 
pop %eax
mov -36(%ebp), %edx
mov -32(%ebp), %eax
mov %edx, %eax
mov %edx, -36(%ebp) 
mov %eax, -32(%ebp) 
L9:
mov -32(%ebp), %edx
mov %edx, %eax
mov %edx, -32(%ebp) 
jmp L19
L7:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN MEM
#IN MEM
mov -20(%ebp), %edx
mov %ebp, %edx
mov %edx, -20(%ebp) 
#IN CONST
mov -24(%ebp), %edx
mov $8, %edx
mov %edx, -24(%ebp) 
mov -24(%ebp), %edx
mov -20(%ebp), %eax
add %edx, %eax
mov %edx, -24(%ebp) 
mov %eax, -20(%ebp) 
mov -20(%ebp), %edx
mov -16(%ebp), %eax
mov (%edx), %eax
mov %edx, -20(%ebp) 
mov %eax, -16(%ebp) 
mov -16(%ebp), %edx
mov -12(%ebp), %eax
mov %edx, %eax
mov %edx, -16(%ebp) 
mov %eax, -12(%ebp) 
#IN CONST
mov -28(%ebp), %edx
mov $12, %edx
mov %edx, -28(%ebp) 
mov -28(%ebp), %edx
mov -12(%ebp), %eax
add %edx, %eax
mov %edx, -28(%ebp) 
mov %eax, -12(%ebp) 
mov -12(%ebp), %edx
mov -8(%ebp), %eax
mov (%edx), %eax
mov %edx, -12(%ebp) 
mov %eax, -8(%ebp) 
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
mov -32(%ebp), %eax
mov %edx, %eax
mov %edx, -4(%ebp) 
mov %eax, -32(%ebp) 
jmp L9
L19:
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
sub $56, %esp
push %ebx
push %edi
push %esi
L23:
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
je L3
L4:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN MEM
mov -32(%ebp), %edx
mov %ebp, %edx
mov %edx, -32(%ebp) 
#IN CONST
mov -36(%ebp), %edx
mov $16, %edx
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
#IN CONST
mov -40(%ebp), %edx
mov $0, %edx
mov %edx, -40(%ebp) 
mov -40(%ebp), %edx
push %edx
mov %edx, -40(%ebp) 
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
call L1
add $12, %esp
pop %edx
pop %ecx
mov -24(%ebp), %edx
mov %eax, %edx
mov %edx, -24(%ebp) 
pop %eax
mov -24(%ebp), %edx
mov -20(%ebp), %eax
mov %edx, %eax
mov %edx, -24(%ebp) 
mov %eax, -20(%ebp) 
L5:
mov -20(%ebp), %edx
mov %edx, %eax
mov %edx, -20(%ebp) 
jmp L22
L3:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN MEM
mov -12(%ebp), %edx
mov %ebp, %edx
mov %edx, -12(%ebp) 
#IN CONST
mov -16(%ebp), %edx
mov $16, %edx
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
mov -20(%ebp), %eax
mov %edx, %eax
mov %edx, -4(%ebp) 
mov %eax, -20(%ebp) 
jmp L5
L22:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
