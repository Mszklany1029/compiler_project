.global tigermain

.data
L1301:
.long 1
.ascii "\n" 
L1258:
.long 1
.ascii " " 
L1252:
.long 1
.ascii " " 
L1251:
.long 1
.ascii "\n" 
L1244:
.long 1
.ascii "0" 
L1243:
.long 1
.ascii "-" 
L1240:
.long 1
.ascii "0" 
L1222:
.long 1
.ascii "0" 
L1213:
.long 1
.ascii " " 
L1212:
.long 1
.ascii "\n" 
L1206:
.long 1
.ascii "0" 
L1205:
.long 1
.ascii "9" 

.text
tigermain:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $52, %esp
push %ebx
push %edi
push %esi
L1307:
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
call L1226
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
call L1230
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
call L1231
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
mov -16(%ebp), %edx
mov %ebp, %edx
mov %edx, -16(%ebp) 
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
push %edi
push %esi
push %ebp
call L1235
add $12, %esp
pop %edx
pop %ecx
mov -44(%ebp), %edx
mov %eax, %edx
mov %edx, -44(%ebp) 
pop %eax
mov -44(%ebp), %edx
mov -12(%ebp), %eax
mov %edx, %eax
mov %edx, -44(%ebp) 
mov %eax, -12(%ebp) 
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
mov -12(%ebp), %edx
push %edx
mov %edx, -12(%ebp) 
mov -16(%ebp), %edx
push %edx
mov %edx, -16(%ebp) 
call L1227
add $8, %esp
pop %edx
pop %ecx
mov -48(%ebp), %edx
mov %eax, %edx
mov %edx, -48(%ebp) 
pop %eax
mov -48(%ebp), %edx
mov %edx, %eax
mov %edx, -48(%ebp) 
jmp L1306
L1306:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L1235:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $152, %esp
push %ebx
push %edi
push %esi
L1310:
#IN REGMOVE
#IN CONST
mov $0, %ecx
mov -24(%ebp), %edx
mov %ecx, %edx
mov %edx, -24(%ebp) 
#IN REGMOVE
#IN CONST
mov $0, %esi
mov -20(%ebp), %edx
mov %esi, %edx
mov %edx, -20(%ebp) 
#IN REGMOVE
#IN CONST
mov $0, %edi
mov -16(%ebp), %edx
mov %edi, %edx
mov %edx, -16(%ebp) 
#IN REGMOVE
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
mov %edx, %ebx
mov %edx, -28(%ebp) 
#IN CONST
mov -40(%ebp), %edx
mov $1, %edx
mov %edx, -40(%ebp) 
mov -40(%ebp), %edx
sub %edx, %ebx
mov %edx, -40(%ebp) 
mov -12(%ebp), %edx
mov %ebx, %edx
mov %edx, -12(%ebp) 
#IN CJUMP
#IN MEM
mov -52(%ebp), %edx
mov %ebp, %edx
mov %edx, -52(%ebp) 
#IN CONST
mov -56(%ebp), %edx
mov $16, %edx
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
mov -44(%ebp), %eax
mov %edx, %eax
mov %edx, -48(%ebp) 
mov %eax, -44(%ebp) 
#IN CONST
mov -60(%ebp), %edx
mov $1, %edx
mov %edx, -60(%ebp) 
mov -60(%ebp), %edx
mov -44(%ebp), %eax
sub %edx, %eax
mov %edx, -60(%ebp) 
mov %eax, -44(%ebp) 
#IN CONST
mov -64(%ebp), %edx
mov $0, %edx
mov %edx, -64(%ebp) 
mov -44(%ebp), %edx
mov -64(%ebp), %eax
cmp %edx, %eax
mov %edx, -44(%ebp) 
mov %eax, -64(%ebp) 
jle L1302
L1304:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
mov -24(%ebp), %edx
push %edx
mov %edx, -24(%ebp) 
#IN MEM
mov -76(%ebp), %edx
mov %ebp, %edx
mov %edx, -76(%ebp) 
#IN CONST
mov -80(%ebp), %edx
mov $8, %edx
mov %edx, -80(%ebp) 
mov -80(%ebp), %edx
mov -76(%ebp), %eax
add %edx, %eax
mov %edx, -80(%ebp) 
mov %eax, -76(%ebp) 
mov -76(%ebp), %edx
mov -72(%ebp), %eax
mov (%edx), %eax
mov %edx, -76(%ebp) 
mov %eax, -72(%ebp) 
mov -72(%ebp), %edx
push %edx
mov %edx, -72(%ebp) 
call L1233
add $8, %esp
pop %edx
pop %ecx
mov -68(%ebp), %edx
mov %eax, %edx
mov %edx, -68(%ebp) 
pop %eax
mov -68(%ebp), %edx
mov -20(%ebp), %eax
mov %edx, %eax
mov %edx, -68(%ebp) 
mov %eax, -20(%ebp) 
mov -20(%ebp), %edx
mov %edx, %eax
mov %edx, -20(%ebp) 
jmp L1309
L1302:
mov -24(%ebp), %edx
mov -8(%ebp), %eax
mov %edx, %eax
mov %edx, -24(%ebp) 
mov %eax, -8(%ebp) 
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN CONST
mov -88(%ebp), %edx
mov $2, %edx
mov %edx, -88(%ebp) 
mov -88(%ebp), %edx
push %edx
mov %edx, -88(%ebp) 
#IN MEM
#IN MEM
mov -104(%ebp), %edx
mov %ebp, %edx
mov %edx, -104(%ebp) 
#IN CONST
mov -108(%ebp), %edx
mov $12, %edx
mov %edx, -108(%ebp) 
mov -108(%ebp), %edx
mov -104(%ebp), %eax
add %edx, %eax
mov %edx, -108(%ebp) 
mov %eax, -104(%ebp) 
mov -104(%ebp), %edx
mov -100(%ebp), %eax
mov (%edx), %eax
mov %edx, -104(%ebp) 
mov %eax, -100(%ebp) 
mov -100(%ebp), %edx
mov -96(%ebp), %eax
mov %edx, %eax
mov %edx, -100(%ebp) 
mov %eax, -96(%ebp) 
mov -16(%ebp), %edx
mov -112(%ebp), %eax
mov %edx, %eax
mov %edx, -16(%ebp) 
mov %eax, -112(%ebp) 
#IN CONST
mov -116(%ebp), %edx
mov $4, %edx
mov %edx, -116(%ebp) 
mov -116(%ebp), %edx
mov -112(%ebp), %eax
imul %edx, %eax
mov %edx, -116(%ebp) 
mov %eax, -112(%ebp) 
mov -112(%ebp), %edx
mov -96(%ebp), %eax
add %edx, %eax
mov %edx, -112(%ebp) 
mov %eax, -96(%ebp) 
mov -96(%ebp), %edx
mov -92(%ebp), %eax
mov (%edx), %eax
mov %edx, -96(%ebp) 
mov %eax, -92(%ebp) 
mov -92(%ebp), %edx
push %edx
mov %edx, -92(%ebp) 
#IN MEM
mov -124(%ebp), %edx
mov %ebp, %edx
mov %edx, -124(%ebp) 
#IN CONST
mov -128(%ebp), %edx
mov $8, %edx
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
push %edx
mov %edx, -120(%ebp) 
call L1234
add $12, %esp
pop %edx
pop %ecx
mov -84(%ebp), %edx
mov %eax, %edx
mov %edx, -84(%ebp) 
pop %eax
mov -84(%ebp), %edx
mov -4(%ebp), %eax
mov %edx, %eax
mov %edx, -84(%ebp) 
mov %eax, -4(%ebp) 
#IN REGMOVE
mov -8(%ebp), %edx
mov -132(%ebp), %eax
mov %edx, %eax
mov %edx, -8(%ebp) 
mov %eax, -132(%ebp) 
mov -4(%ebp), %edx
mov -132(%ebp), %eax
add %edx, %eax
mov %edx, -4(%ebp) 
mov %eax, -132(%ebp) 
mov -132(%ebp), %edx
mov -24(%ebp), %eax
mov %edx, %eax
mov %edx, -132(%ebp) 
mov %eax, -24(%ebp) 
#IN CALL
push %eax
push %ecx
push %edx
mov -24(%ebp), %edx
push %edx
mov %edx, -24(%ebp) 
#IN MEM
mov -140(%ebp), %edx
mov %ebp, %edx
mov %edx, -140(%ebp) 
#IN CONST
mov -144(%ebp), %edx
mov $8, %edx
mov %edx, -144(%ebp) 
mov -144(%ebp), %edx
mov -140(%ebp), %eax
add %edx, %eax
mov %edx, -144(%ebp) 
mov %eax, -140(%ebp) 
mov -140(%ebp), %edx
mov -136(%ebp), %eax
mov (%edx), %eax
mov %edx, -140(%ebp) 
mov %eax, -136(%ebp) 
mov -136(%ebp), %edx
push %edx
mov %edx, -136(%ebp) 
call L1227
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
mov -148(%ebp), %edx
mov $L1301, %edx
mov %edx, -148(%ebp) 
mov -148(%ebp), %edx
push %edx
mov %edx, -148(%ebp) 
call print
add $4, %esp
pop %edx
pop %ecx
mov %eax, %edi
pop %eax
#IN CJUMP
mov -12(%ebp), %edx
mov -16(%ebp), %eax
cmp %edx, %eax
mov %edx, -12(%ebp) 
mov %eax, -16(%ebp) 
jge L1304
L1305:
#IN REGMOVE
mov -16(%ebp), %edx
mov %edx, %esi
mov %edx, -16(%ebp) 
#IN CONST
mov $1, %ecx
add %ecx, %esi
mov -16(%ebp), %edx
mov %esi, %edx
mov %edx, -16(%ebp) 
jmp L1302
L1309:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L1234:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $112, %esp
push %ebx
push %edi
push %esi
L1313:
#IN REGMOVE
#IN MEM
mov %ebp, %ebx
#IN CONST
mov $12, %edi
add %edi, %ebx
mov (%ebx), %ecx
mov -4(%ebp), %edx
mov %ecx, %edx
mov %edx, -4(%ebp) 
#IN REGMOVE
#IN MEM
mov -16(%ebp), %edx
mov %ebp, %edx
mov %edx, -16(%ebp) 
#IN CONST
mov -20(%ebp), %edx
mov $16, %edx
mov %edx, -20(%ebp) 
mov -20(%ebp), %edx
mov -16(%ebp), %eax
add %edx, %eax
mov %edx, -20(%ebp) 
mov %eax, -16(%ebp) 
mov -16(%ebp), %edx
mov (%edx), %esi
mov %edx, -16(%ebp) 
mov -8(%ebp), %edx
mov %esi, %edx
mov %edx, -8(%ebp) 
#IN REGMOVE
#IN CONST
mov -24(%ebp), %edx
mov $1, %edx
mov %edx, -24(%ebp) 
mov -24(%ebp), %edx
mov -12(%ebp), %eax
mov %edx, %eax
mov %edx, -24(%ebp) 
mov %eax, -12(%ebp) 
#IN CJUMP
#IN CONST
mov -28(%ebp), %edx
mov $1, %edx
mov %edx, -28(%ebp) 
mov -28(%ebp), %edx
mov -8(%ebp), %eax
cmp %edx, %eax
mov %edx, -28(%ebp) 
mov %eax, -8(%ebp) 
je L1285
L1286:
#IN REGMOVE
#IN CONST
mov -68(%ebp), %edx
mov $0, %edx
mov %edx, -68(%ebp) 
mov -68(%ebp), %edx
mov -12(%ebp), %eax
mov %edx, %eax
mov %edx, -68(%ebp) 
mov %eax, -12(%ebp) 
L1285:
#IN CJUMP
#IN CONST
mov -32(%ebp), %edx
mov $0, %edx
mov %edx, -32(%ebp) 
mov -32(%ebp), %edx
mov -12(%ebp), %eax
cmp %edx, %eax
mov %edx, -32(%ebp) 
mov %eax, -12(%ebp) 
jne L1287
L1288:
#IN REGMOVE
#IN CONST
mov -36(%ebp), %edx
mov $1, %edx
mov %edx, -36(%ebp) 
mov -36(%ebp), %edx
mov %edx, %esi
mov %edx, -36(%ebp) 
#IN CJUMP
#IN CONST
mov -40(%ebp), %edx
mov $0, %edx
mov %edx, -40(%ebp) 
mov -40(%ebp), %edx
mov -8(%ebp), %eax
cmp %edx, %eax
mov %edx, -40(%ebp) 
mov %eax, -8(%ebp) 
je L1294
L1295:
#IN REGMOVE
#IN CONST
mov $0, %edi
mov %edi, %esi
L1294:
#IN CJUMP
#IN CONST
mov -44(%ebp), %edx
mov $0, %edx
mov %edx, -44(%ebp) 
mov -44(%ebp), %edx
cmp %edx, %esi
mov %edx, -44(%ebp) 
jne L1296
L1297:
#IN REGMOVE
#IN CONST
mov $0, %ecx
mov -76(%ebp), %edx
mov %ecx, %edx
mov %edx, -76(%ebp) 
#IN REGMOVE
mov -8(%ebp), %edx
mov %edx, %ebx
mov %edx, -8(%ebp) 
#IN CONST
mov $2, %edi
sub %edi, %ebx
mov -72(%ebp), %edx
mov %ebx, %edx
mov %edx, -72(%ebp) 
#IN CJUMP
mov -8(%ebp), %edx
mov -80(%ebp), %eax
mov %edx, %eax
mov %edx, -8(%ebp) 
mov %eax, -80(%ebp) 
#IN CONST
mov -84(%ebp), %edx
mov $2, %edx
mov %edx, -84(%ebp) 
mov -84(%ebp), %edx
mov -80(%ebp), %eax
sub %edx, %eax
mov %edx, -84(%ebp) 
mov %eax, -80(%ebp) 
#IN CONST
mov -88(%ebp), %edx
mov $0, %edx
mov %edx, -88(%ebp) 
mov -80(%ebp), %edx
mov -88(%ebp), %eax
cmp %edx, %eax
mov %edx, -80(%ebp) 
mov %eax, -88(%ebp) 
jle L1290
L1292:
#IN REGMOVE
#IN CONST
mov -92(%ebp), %edx
mov $0, %edx
mov %edx, -92(%ebp) 
mov -92(%ebp), %edx
mov %edx, %esi
mov %edx, -92(%ebp) 
L1298:
mov -4(%ebp), %edx
mov %edx, %eax
mov %edx, -4(%ebp) 
jmp L1312
L1287:
#IN REGMOVE
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
mov -4(%ebp), %eax
mov %edx, %eax
mov %edx, -48(%ebp) 
mov %eax, -4(%ebp) 
jmp L1288
L1296:
#IN REGMOVE
#IN CONST
mov -60(%ebp), %edx
mov $1, %edx
mov %edx, -60(%ebp) 
mov -60(%ebp), %edx
mov -4(%ebp), %eax
mov %edx, %eax
mov %edx, -60(%ebp) 
mov %eax, -4(%ebp) 
#IN REGMOVE
#IN CONST
mov -64(%ebp), %edx
mov $0, %edx
mov %edx, -64(%ebp) 
mov -64(%ebp), %edx
mov %edx, %esi
mov %edx, -64(%ebp) 
jmp L1298
L1290:
#IN REGMOVE
mov -4(%ebp), %edx
mov -96(%ebp), %eax
mov %edx, %eax
mov %edx, -4(%ebp) 
mov %eax, -96(%ebp) 
#IN MEM
mov -104(%ebp), %edx
mov %ebp, %edx
mov %edx, -104(%ebp) 
#IN CONST
mov -108(%ebp), %edx
mov $12, %edx
mov %edx, -108(%ebp) 
mov -108(%ebp), %edx
mov -104(%ebp), %eax
add %edx, %eax
mov %edx, -108(%ebp) 
mov %eax, -104(%ebp) 
mov -104(%ebp), %edx
mov -100(%ebp), %eax
mov (%edx), %eax
mov %edx, -104(%ebp) 
mov %eax, -100(%ebp) 
mov -100(%ebp), %edx
mov -96(%ebp), %eax
imul %edx, %eax
mov %edx, -100(%ebp) 
mov %eax, -96(%ebp) 
mov -96(%ebp), %edx
mov -4(%ebp), %eax
mov %edx, %eax
mov %edx, -96(%ebp) 
mov %eax, -4(%ebp) 
#IN CJUMP
mov -72(%ebp), %edx
mov -76(%ebp), %eax
cmp %edx, %eax
mov %edx, -72(%ebp) 
mov %eax, -76(%ebp) 
jge L1292
L1293:
#IN REGMOVE
mov -76(%ebp), %edx
mov %edx, %esi
mov %edx, -76(%ebp) 
#IN CONST
mov $1, %edi
add %edi, %esi
mov -76(%ebp), %edx
mov %esi, %edx
mov %edx, -76(%ebp) 
jmp L1290
L1312:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L1233:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $164, %esp
push %ebx
push %edi
push %esi
L1316:
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
jle L1280
L1281:
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
L1280:
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
jne L1282
L1283:
L1278:
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
jl L1275
L1276:
#IN REGMOVE
#IN CONST
mov $0, %ecx
mov %ecx, %esi
L1275:
#IN CJUMP
#IN CONST
mov -160(%ebp), %edx
mov $0, %edx
mov %edx, -160(%ebp) 
mov -160(%ebp), %edx
cmp %edx, %esi
mov %edx, -160(%ebp) 
jne L1279
L1277:
#IN REGMOVE
#IN CONST
mov $0, %edi
mov %edi, %ecx
L1284:
mov -8(%ebp), %edx
mov %edx, %eax
mov %edx, -8(%ebp) 
jmp L1315
L1282:
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
jmp L1284
L1279:
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
jmp L1278
L1315:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L1232:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $40, %esp
push %ebx
push %edi
push %esi
L1319:
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
jge L1272
L1273:
#IN REGMOVE
#IN CONST
mov -24(%ebp), %edx
mov $0, %edx
mov %edx, -24(%ebp) 
mov -24(%ebp), %edx
mov -20(%ebp), %eax
mov %edx, %eax
mov %edx, -24(%ebp) 
mov %eax, -20(%ebp) 
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
mov -20(%ebp), %eax
sub %edx, %eax
mov %edx, -28(%ebp) 
mov %eax, -20(%ebp) 
mov -20(%ebp), %edx
mov -16(%ebp), %eax
mov %edx, %eax
mov %edx, -20(%ebp) 
mov %eax, -16(%ebp) 
L1274:
mov -16(%ebp), %edx
mov %edx, %eax
mov %edx, -16(%ebp) 
jmp L1318
L1272:
#IN REGMOVE
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
mov -16(%ebp), %eax
mov %edx, %eax
mov %edx, -4(%ebp) 
mov %eax, -16(%ebp) 
jmp L1274
L1318:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L1231:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $156, %esp
push %ebx
push %edi
push %esi
L1322:
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
call L1230
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
call L1230
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
jle L1268
L1270:
mov -12(%ebp), %edx
mov %edx, %eax
mov %edx, -12(%ebp) 
jmp L1321
L1268:
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
jge L1270
L1271:
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
jmp L1268
L1321:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L1230:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $64, %esp
push %ebx
push %edi
push %esi
L1325:
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
je L1263
L1264:
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
call L1230
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
L1265:
mov -8(%ebp), %edx
mov %edx, %eax
mov %edx, -8(%ebp) 
jmp L1324
L1263:
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
jmp L1265
L1324:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L1229:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $92, %esp
push %ebx
push %edi
push %esi
L1328:
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
jle L1259
L1261:
#IN REGMOVE
#IN CONST
mov -44(%ebp), %edx
mov $0, %edx
mov %edx, -44(%ebp) 
mov -44(%ebp), %edx
mov %edx, %eax
mov %edx, -44(%ebp) 
jmp L1327
L1259:
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
call L1227
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
mov $L1258, %edx
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
jge L1261
L1262:
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
jmp L1259
L1327:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L1228:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $104, %esp
push %ebx
push %edi
push %esi
L1331:
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
je L1253
L1254:
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
call L1227
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
mov $L1252, %edx
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
call L1228
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
L1255:
mov -12(%ebp), %edx
mov %edx, %eax
mov %edx, -12(%ebp) 
jmp L1330
L1253:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov -8(%ebp), %edx
mov $L1251, %edx
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
jmp L1255
L1330:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L1227:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $64, %esp
push %ebx
push %edi
push %esi
L1334:
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
jl L1248
L1249:
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
jg L1245
L1246:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov $L1244, %edi
push %edi
call print
add $4, %esp
pop %edx
pop %ecx
mov %eax, %esi
pop %eax
mov %esi, %ecx
L1247:
mov %ecx, %ebx
L1250:
mov %ebx, %eax
jmp L1333
L1248:
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov -4(%ebp), %edx
mov $L1243, %edx
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
call L1239
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
jmp L1250
L1245:
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
call L1239
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
jmp L1247
L1333:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L1239:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $128, %esp
push %ebx
push %edi
push %esi
L1337:
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
jg L1241
L1242:
#IN REGMOVE
#IN CONST
mov -16(%ebp), %edx
mov $0, %edx
mov %edx, -16(%ebp) 
mov -16(%ebp), %edx
mov %edx, %eax
mov %edx, -16(%ebp) 
jmp L1336
L1241:
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
call L1239
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
mov $L1240, %edx
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
jmp L1242
L1336:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L1226:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $104, %esp
push %ebx
push %edi
push %esi
L1340:
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
call L1202
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
jne L1236
L1237:
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
L1238:
mov -96(%ebp), %edx
mov %edx, %eax
mov %edx, -96(%ebp) 
jmp L1339
L1236:
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
call L1226
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
jmp L1238
L1339:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L1202:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $188, %esp
push %ebx
push %edi
push %esi
L1343:
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
call L1204
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
call L1203
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
L1224:
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
call L1203
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
jne L1225
L1223:
mov -4(%ebp), %edx
mov %edx, %eax
mov %edx, -4(%ebp) 
jmp L1342
L1225:
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
mov $L1222, %edx
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
jmp L1224
L1342:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L1204:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $152, %esp
push %ebx
push %edi
push %esi
L1220:
#IN REGMOVE
#IN CALL
push %eax
push %ecx
push %edx
#IN NAME
mov -88(%ebp), %edx
mov $L1213, %edx
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
je L1214
L1215:
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
mov $L1212, %ecx
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
je L1217
L1218:
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
L1217:
mov -104(%ebp), %edx
mov %edx, %ecx
mov %edx, -104(%ebp) 
L1216:
#IN CJUMP
#IN CONST
mov -44(%ebp), %edx
mov $0, %edx
mov %edx, -44(%ebp) 
mov -44(%ebp), %edx
cmp %edx, %ecx
mov %edx, -44(%ebp) 
jne L1221
L1219:
#IN REGMOVE
#IN CONST
mov $0, %ebx
mov %ebx, %eax
jmp L1345
L1214:
#IN REGMOVE
#IN CONST
mov -48(%ebp), %edx
mov $1, %edx
mov %edx, -48(%ebp) 
mov -48(%ebp), %edx
mov %edx, %ecx
mov %edx, -48(%ebp) 
jmp L1216
L1221:
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
jmp L1220
L1345:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
L1203:
#PROLOGUE BEGIN
push %ebp
mov %esp, %ebp
sub $120, %esp
push %ebx
push %edi
push %esi
L1348:
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
mov $L1206, %edx
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
jge L1207
L1208:
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
L1209:
mov -112(%ebp), %edx
mov %edx, %eax
mov %edx, -112(%ebp) 
jmp L1347
L1207:
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
mov $L1205, %edx
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
jle L1210
L1211:
#IN REGMOVE
#IN CONST
mov $0, %esi
mov %esi, %ecx
L1210:
mov -112(%ebp), %edx
mov %ecx, %edx
mov %edx, -112(%ebp) 
jmp L1209
L1347:
#EPILOGUE BEGIN
pop %esi
pop %edi
pop %ebx
mov %ebp, %esp
pop %ebp
ret
