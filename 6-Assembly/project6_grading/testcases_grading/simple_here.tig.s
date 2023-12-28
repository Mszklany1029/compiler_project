.global tigermain

.data

.text
tigermain:
PUSH %ebp
MOV %esp, %ebp
ADD $-0, %esp
PUSH %ebx
PUSH %edi
PUSH %esi
L5:
PUSH %ecx
PUSH %edx
PUSH $2
PUSH %ebp
CALL L0
ADD $8, %esp
POP %edx
POP %ecx
MOV %eax, %eax
JMP L4
L4:
POP %esi
POP %edi
POP %ebx
ADD $0, %esp
POP %ebp
RET
L0:
PUSH %ebp
MOV %esp, %ebp
ADD $-28, %esp
PUSH %ebx
PUSH %edi
PUSH %esi
MOV %ebx, -4(%ebp)
MOV %ebx, -20(%ebp)
MOV %ecx, -16(%ebp)
MOV %esi, -12(%ebp)
MOV %edi, -8(%ebp)
L8:
MOV -12(%ebp), %ebx
MOV $1, %ebx
MOV -20(%ebp), %edi
MOV %ebx, %edi
MOV -4(%ebp), %esi
MOV %ebp, %esi
ADD $12, %esi
MOV -8(%ebp), %ecx
MOV (%esi), %ecx
MOV %esi, -4(%ebp)
MOV -16(%ebp), %esi
MOV %ecx, %esi
MOV %ecx, -8(%ebp)
MOV %ebx, -12(%ebp)
MOV %edi, -20(%ebp)
MOV %esi, -16(%ebp)
MOV %ecx, -24(%ebp)
MOV %ebx, -28(%ebp)
L2:
MOV -24(%ebp), %esi
MOV $0, %esi
MOV -28(%ebp), %ebx
MOV $0, %ebx
CMP %ebx, %esi
MOV %ebp, -24(%ebp)
MOV %ebx, -28(%ebp)
jne L3
L1:
MOV -20(%ebp), %ebx
MOV %ebx, %eax
MOV %ebx, -20(%ebp)
JMP L7
L3:
JMP L2
L7:
POP %esi
POP %edi
POP %ebx
ADD $28, %esp
POP %ebp
RET
