OUTPUT_FORMAT(elf32-i386)
ENTRY(inicio)
SECTIONS
{
    . = 0x00100000;
    .text : {*(.text)}
    .data : {*(.data)}
    .bss  : {*(.bss)}
}