/* entry point of our kernel */
ENTRY(_start)

/*
 * A linker file provides how much size should be allocated to each of the sections. The sections
 * being sections of a process consisting of data, bss, rodata and text. (Just some examples)
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
