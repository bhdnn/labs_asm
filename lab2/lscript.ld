/* Linker script for STM32 — Variant 0 */

MEMORY {
    FLASH (rx)  : ORIGIN = 0x08000000, LENGTH = 64K
    RAM   (rwx) : ORIGIN = 0x20000000, LENGTH = 20K
}

SECTIONS {
    .text : {
        *(.isr_vector)
        *(.text)
        *(.text*)
    } > FLASH

    .data : {
        *(.data)
        *(.data*)
    } > RAM AT > FLASH

    .bss : {
        *(.bss)
        *(.bss*)
        *(COMMON)
    } > RAM
}
