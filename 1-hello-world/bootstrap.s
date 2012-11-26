.globl	start
.code16

start:
		jmp $0x0, $code
msg:
        .string "Hello World\x0"
code:
		movw $0xb800, %ax
		movw %ax, %es
		xorw %ax, %ax
		movw %ax, %ds
		movw $msg, %si
		xorw %di, %di
		cld
		movb $0x07, %al
1:		cmp $0, (%si)
		je 2
		movsb
		stosb
		jmp 1b
2:		jmp 2

.org	0x1fe, 0x0
.word 0xaa55
