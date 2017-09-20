bits 32

section .text
        align 4
        dd 0x1BADB002 ;numnero magico para multboot
        dd 0x00 ; Flags
        dd - (0x1BADB002 + 0x00) ; Checksum

global inicio
extern main

inicio:
    cli ;bloqueia interrupções
    mov esp, pilha ;define pilha
    call main
    hlt

section .bss

resb 8*1024 ;Pilha de 8K

pilha: