.global tigermain

.data
L34:
.long 6
.ascii "Wilbur" 
L33:
.long 3
.ascii "Tom" 
L32:
.long 6
.ascii "Snoopy" 
L31:
.long 11
.ascii " goes oink\n" 
L30:
.long 11
.ascii " goes meow\n" 
L29:
.long 11
.ascii " goes woof\n" 

.text
tigermain:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $36, %esp
push %ebx
push %edi
push %esi
L36:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov -4(%ebp), %edx
mov $L32, %edx
mov %edx, -4(%ebp) 
mov -4(%ebp), %edx
push %edx
mov %edx, -4(%ebp) 
push %ebp
call L26
add $8, %esp
pop %edx
pop %ecx
mov %eax, %ecx
pop %eax
mov %ecx, %ebx
#IN CALL
push %eax
push %ecx
push %edx
push %ebx
call print
add $4, %esp
pop %edx
pop %ecx
mov -8(%ebp), %edx
mov %eax, %edx
mov %edx, -8(%ebp) 
pop %eax
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov -16(%ebp), %edx
mov $L33, %edx
mov %edx, -16(%ebp) 
mov -16(%ebp), %edx
push %edx
mov %edx, -16(%ebp) 
push %ebp
call L27
add $8, %esp
pop %edx
pop %ecx
mov -12(%ebp), %edx
mov %eax, %edx
mov %edx, -12(%ebp) 
pop %eax
mov -12(%ebp), %edx
mov %edx, %edi
mov %edx, -12(%ebp) 
#IN CALL
push %eax
push %ecx
push %edx
push %edi
call print
add $4, %esp
pop %edx
pop %ecx
mov -20(%ebp), %edx
mov %eax, %edx
mov %edx, -20(%ebp) 
pop %eax
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov -28(%ebp), %edx
mov $L34, %edx
mov %edx, -28(%ebp) 
mov -28(%ebp), %edx
push %edx
mov %edx, -28(%ebp) 
push %ebp
call L28
add $8, %esp
pop %edx
pop %ecx
mov -24(%ebp), %edx
mov %eax, %edx
mov %edx, -24(%ebp) 
pop %eax
mov -24(%ebp), %edx
mov %edx, %esi
mov %edx, -24(%ebp) 
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
push %esi
call print
add $4, %esp
pop %edx
pop %ecx
mov -32(%ebp), %edx
mov %eax, %edx
mov %edx, -32(%ebp) 
pop %eax
mov -32(%ebp), %edx
mov %edx, %eax
mov %edx, -32(%ebp) 
jmp L35
L35:
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
sub $8, %esp
push %ebx
push %edi
push %esi
L39:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov $L31, %edi
push %edi
#IN MEM
mov %ebp, %ecx
#IN CONST
mov -4(%ebp), %edx
mov $12, %edx
mov %edx, -4(%ebp) 
mov -4(%ebp), %edx
add %edx, %ecx
mov %edx, -4(%ebp) 
mov (%ecx), %esi
push %esi
call concat
add $8, %esp
pop %edx
pop %ecx
mov %eax, %ebx
pop %eax
mov %ebx, %eax
jmp L38
L38:
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
sub $8, %esp
push %ebx
push %edi
push %esi
L42:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov $L30, %edi
push %edi
#IN MEM
mov %ebp, %ecx
#IN CONST
mov -4(%ebp), %edx
mov $12, %edx
mov %edx, -4(%ebp) 
mov -4(%ebp), %edx
add %edx, %ecx
mov %edx, -4(%ebp) 
mov (%ecx), %esi
push %esi
call concat
add $8, %esp
pop %edx
pop %ecx
mov %eax, %ebx
pop %eax
mov %ebx, %eax
jmp L41
L41:
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
sub $8, %esp
push %ebx
push %edi
push %esi
L45:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov $L29, %edi
push %edi
#IN MEM
mov %ebp, %ecx
#IN CONST
mov -4(%ebp), %edx
mov $12, %edx
mov %edx, -4(%ebp) 
mov -4(%ebp), %edx
add %edx, %ecx
mov %edx, -4(%ebp) 
mov (%ecx), %esi
push %esi
call concat
add $8, %esp
pop %edx
pop %ecx
mov %eax, %ebx
pop %eax
mov %ebx, %eax
jmp L44
L44:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
