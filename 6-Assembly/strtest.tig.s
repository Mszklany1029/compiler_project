.global tigermain

.data
L30:
.long 3
.ascii "abc" 
L29:
.long 3
.ascii "abc" 
L28:
.long 4
.ascii "grea" 
L27:
.long 4
.ascii "LESS" 

.text
tigermain:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $32, %esp
push %ebx
push %edi
push %esi
L37:
#IN REGMOVE
#IN CONST
mov $1, %esi
mov -4(%ebp), %edx
mov %esi, %edx
mov %edx, -4(%ebp) 
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov $L30, %ebx
push %ebx
#IN NAME
mov -8(%ebp), %edx
mov $L29, %edx
mov %edx, -8(%ebp) 
mov -8(%ebp), %edx
push %edx
mov %edx, -8(%ebp) 
call stringCompare
add $8, %esp
pop %edx
pop %ecx
mov %eax, %ecx
pop %eax
mov %ecx, %edi
#IN CJUMP
#IN CONST
mov -12(%ebp), %edx
mov $1, %edx
mov %edx, -12(%ebp) 
mov -12(%ebp), %edx
cmp %edx, %edi
mov %edx, -12(%ebp) 
jge L31
L32:
#IN REGMOVE
#IN CONST
mov -28(%ebp), %edx
mov $0, %edx
mov %edx, -28(%ebp) 
mov -28(%ebp), %edx
mov -4(%ebp), %eax
mov %edx, %eax
mov %edx, -28(%ebp) 
mov %eax, -4(%ebp) 
L31:
#IN CJUMP
#IN CONST
mov -16(%ebp), %edx
mov $0, %edx
mov %edx, -16(%ebp) 
mov -16(%ebp), %edx
mov -4(%ebp), %eax
cmp %edx, %eax
mov %edx, -16(%ebp) 
mov %eax, -4(%ebp) 
jne L33
L34:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov $L28, %esi
push %esi
call print
add $4, %esp
pop %edx
pop %ecx
mov %eax, %ecx
pop %eax
mov %ecx, %ebx
L35:
mov %ebx, %eax
jmp L36
L33:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov -24(%ebp), %edx
mov $L27, %edx
mov %edx, -24(%ebp) 
mov -24(%ebp), %edx
push %edx
mov %edx, -24(%ebp) 
call print
add $4, %esp
pop %edx
pop %ecx
mov -20(%ebp), %edx
mov %eax, %edx
mov %edx, -20(%ebp) 
pop %eax
mov -20(%ebp), %edx
mov %edx, %ebx
mov %edx, -20(%ebp) 
jmp L35
L36:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
