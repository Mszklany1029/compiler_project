.global tigermain

.data
L10:
.long 11
.ascii "END OF FOR\n" 
L2:
.long 5
.ascii "LOOP\n" 

.text
tigermain:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $28, %esp
push %ebx
push %edi
push %esi
L12:
#IN REGMOVE
#IN CONST
mov $0, %esi
mov -8(%ebp), %edx
mov %esi, %edx
mov %edx, -8(%ebp) 
#IN REGMOVE
#IN CONST
mov $100, %ecx
mov -4(%ebp), %edx
mov %ecx, %edx
mov %edx, -4(%ebp) 
#IN CJUMP
#IN CONST
mov $100, %edi
#IN CONST
mov $0, %ebx
cmp %edi, %ebx
jle L6
L8:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov -16(%ebp), %edx
mov $L10, %edx
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
jmp L11
L6:
#IN CJUMP
#IN CONST
mov -20(%ebp), %edx
mov $2, %edx
mov %edx, -20(%ebp) 
mov -20(%ebp), %edx
mov -8(%ebp), %eax
cmp %edx, %eax
mov %edx, -20(%ebp) 
mov %eax, -8(%ebp) 
je L3
L4:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov $L2, %ecx
push %ecx
call print
add $4, %esp
pop %edx
pop %ecx
mov %eax, %edi
pop %eax
mov %edi, %ebx
L5:
#IN CJUMP
mov -4(%ebp), %edx
mov -8(%ebp), %eax
cmp %edx, %eax
mov %edx, -4(%ebp) 
mov %eax, -8(%ebp) 
jge L8
L9:
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
jmp L6
L3:
#IN REGMOVE
#IN CONST
mov -24(%ebp), %edx
mov $0, %edx
mov %edx, -24(%ebp) 
mov -24(%ebp), %edx
mov %edx, %ebx
mov %edx, -24(%ebp) 
jmp L5
L11:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
