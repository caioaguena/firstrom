all:
	nasm -f elf32 kernel.asm -o kernel.o
	gcc -m32 -c main.c -o main.o
	ld -m elf_i386 -T link.ld -o kernel kernel.o main.o