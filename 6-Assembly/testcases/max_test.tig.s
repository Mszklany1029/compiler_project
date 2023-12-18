.global tigermain

.data
L1:
    .long 1
    .ascii "|"

.text
tigermain:
push %ebp
mov %esp, %ebp
sub $16, %esp
push %ebx
push %edi
push %esi
L5:
MOV $1, %edi
MOV %edi, %ebx
MOV $1, %esi
MOV $5, %ecx
CMP %ecx, %esi
JG L0
JMP L2
L2:
MOV -4(%ebp), %eax
MOV $L1, %eax
MOV %eax, -4(%ebp)
PUSH  %eax
PUSH %ecx
PUSH %edx
MOV -4(%ebp), %eax
PUSH %eax
MOV %eax, -4(%ebp)
CALL print
ADD $4, %esp
MOV %eax, %edi
POP %edx
POP %ecx
POP %eax
MOV -8(%ebp), %eax
MOV $5, %eax
MOV %eax, -8(%ebp)
MOV -8(%ebp), %eax
CMP %eax, %ebx
MOV %eax, -8(%ebp)
JL L3
JMP L0
L0:
MOV -12(%ebp), %eax
MOV $0, %eax
MOV %eax, -12(%ebp)
MOV -12(%ebp), %eax
MOV %eax, %edi
MOV %eax, -12(%ebp)
JMP L4
L3:
MOV -16(%ebp), %eax
MOV %ebx, %eax
MOV %eax, -16(%ebp)
MOV -16(%ebp), %eax
ADD $1, %eax
MOV %eax, -16(%ebp)
MOV -16(%ebp), %eax
MOV %eax, %ebx
MOV %eax, -16(%ebp)
JMP L2
L4:
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
