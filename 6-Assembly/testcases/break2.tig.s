.global tigermain

.data
L22:
.long 13
.ascii "END OF WHILE\n" 
L15:
.long 5
.ascii "LOOP\n" 

.text
tigermain:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $24, %esp
push %ebx
push %edi
push %esi
L24:
#IN REGMOVE
#IN CONST
mov $5, %edi
mov -20(%ebp), %edx
mov %edi, %edx
mov %edx, -20(%ebp) 
L20:
#IN CJUMP
#IN CONST
mov -16(%ebp), %edx
mov $0, %edx
mov %edx, -16(%ebp) 
mov -16(%ebp), %edx
mov -20(%ebp), %eax
cmp %edx, %eax
mov %edx, -16(%ebp) 
mov %eax, -20(%ebp) 
jg L21
L19:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov $L22, %ecx
push %ecx
call print
add $4, %esp
pop %edx
pop %ecx
mov %eax, %edi
pop %eax
mov %edi, %eax
jmp L23
L21:
#IN CJUMP
#IN CONST
mov -8(%ebp), %edx
mov $2, %edx
mov %edx, -8(%ebp) 
mov -8(%ebp), %edx
mov -20(%ebp), %eax
cmp %edx, %eax
mov %edx, -8(%ebp) 
mov %eax, -20(%ebp) 
je L16
L17:
#IN REGMOVE
mov -20(%ebp), %edx
mov %edx, %edi
mov %edx, -20(%ebp) 
#IN CONST
mov $1, %ecx
sub %ecx, %edi
mov -20(%ebp), %edx
mov %edi, %edx
mov %edx, -20(%ebp) 
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov $L15, %ebx
push %ebx
call print
add $4, %esp
pop %edx
pop %ecx
mov %eax, %esi
pop %eax
mov -12(%ebp), %edx
mov %esi, %edx
mov %edx, -12(%ebp) 
L18:
jmp L20
L16:
#IN REGMOVE
#IN CONST
mov -4(%ebp), %edx
mov $0, %edx
mov %edx, -4(%ebp) 
mov -4(%ebp), %edx
mov -12(%ebp), %eax
mov %edx, %eax
mov %edx, -4(%ebp) 
mov %eax, -12(%ebp) 
jmp L18
L23:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
