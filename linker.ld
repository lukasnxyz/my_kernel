/* entry point of our kernel */
ENTRY(_start)

/*
 * A linker file provides how much size should be allocated to each of the sections. The sections
 * being sections of a process consisting of data, bss, rodata and text. (Just some examples)
 *
 * C32/kernel/bin/.process.o
 * architecture: i386, flags 0x00000011:
 * HAS_RELOC, HAS_SYMS
 * start address 0x00000000
 * Sections:
 * Idx Name          Size      VMA       LMA       File off  Algn
 * 0 .text         00000333  00000000  00000000  00000040  2**4
 *                 CONTENTS, ALLOC, LOAD, RELOC, READONLY, CODE
 * 1 .data         00000050  00000000  00000000  00000380  2**5
 *                 CONTENTS, ALLOC, LOAD, DATA
 * 2 .bss          00000000  00000000  00000000  000003d0  2**2
 *                 ALLOC
 * 3 .note         00000014  00000000  00000000  000003d0  2**0
 *                 CONTENTS, READONLY
 * 4 .stab         000020e8  00000000  00000000  000003e4  2**2
 *                 CONTENTS, RELOC, READONLY, DEBUGGING
 * 5 .stabstr      00008f17  00000000  00000000  000024cc  2**0
 *                 CONTENTS, READONLY, DEBUGGING
 * 6 .rodata       000001e4  00000000  00000000  0000b400  2**5
 *                 CONTENTS, ALLOC, LOAD, READONLY, DATA
 * 7 .comment      00000023  00000000  00000000  0000b5e4  2**0
 *                 CONTENTS, READONLY
 *
 *  https://osdev.org/ELF
 */

SECTIONS
{
    /* we need 1MB of space at least */
    . = 1M;

    /* text section */
    .text BLOCK(4K) : ALIGN(4K) {
        *(.multiboot)
        *(.text)
    }

    /* read only data section */
    .rodata BLOCK(4K) : ALIGN(4K) {
        *(.rodata)
    }

    /* data section */
    .data BLOCK(4K) : ALIGN(4K) {
        *(.data)
    }

    /* bss section */
    .bss BLOCK(4K) : ALIGN(4K) {
        *(COMMON)
        *(.bss)
    }
}
