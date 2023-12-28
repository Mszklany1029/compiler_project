.global tigermain

.data
L2:
.long 6
.ascii "Snoopy" 

.text
tigermain:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $4, %esp
push %ebx
push %edi
push %esi
L4:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov $L2, %esi
push %esi
push %ebp
call L1
add $8, %esp
pop %edx
pop %ecx
mov %eax, %edi
pop %eax
mov %edi, %ebx
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
push %ebx
call print
add $4, %esp
pop %edx
pop %ecx
mov %eax, %ecx
pop %eax
mov %ecx, %eax
jmp L3
L3:
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
sub $4, %esp
push %ebx
push %edi
push %esi
L7:
#IN REGMOVE
#IN MEM
mov %ebp, %edi
#IN CONST
mov $12, %esi
add %esi, %edi
mov (%edi), %ebx
mov %ebx, %eax
jmp L6
L6:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
