@Third Program
.section .data
val1: .int -60
val2: .int 11
val3: .int 16

.section .text
.globl _start
_start:

ldr r1, =val1
ldr r1, [r1]
ldr r2, =val2
ldr r2, [r2]
ldr r3, =val3
ldr r3, [r3]

add r2,r2,#3	@adds 3 to var2
add r2,r2,r3	@adds var3 to var2
sub r2,r2,r1	@sub var1 from var2

svc #0
.end
