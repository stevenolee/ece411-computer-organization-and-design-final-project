#  mp4-cp1.s version 4.0
.align 4
.section .text
.globl _start
_start:
BR_TEST:
    beq x0, x0, DONEa

.section .rodata
.balign 256
ONE:    .word 0x00000001
TWO:    .word 0x00000002
NEGTWO: .word 0xFFFFFFFE
TEMP1:  .word 0x00000001
GOOD:   .word 0x600D600D
BADD:   .word 0xBADDBADD
BYTES:  .word 0x04030201
HALF:   .word 0x0020FFFF

.section .text
.align 4
BADBAD:
pcrel_BADD: auipc x15, %pcrel_hi(BADD)
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    lw x1, %pcrel_lo(pcrel_BADD)(x15)
HALT:
    beq x0, x0, HALT
    nop
    nop
    nop
    nop
    nop
    nop
    nop

DONEa:
pcrel_GOOD: auipc x16, %pcrel_hi(GOOD)
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    lw x1, %pcrel_lo(pcrel_GOOD)(x16)
DONEb:
    beq x0, x0, DONEb
    nop
    nop
    nop
    nop
    nop
    nop
    nop