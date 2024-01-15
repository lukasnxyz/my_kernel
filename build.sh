# assemble boot.s file
as --32 boot.s -o boot.o

# compile kernel.c file
gcc -m32 -c kernel.c -o kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra

# linking the kernel with kernel.o and boot.o files
ld -m elf_i386 -T linker.ld kernel.o boot.o -o my_kernel.bin -nostdlib

# check my_kernel.bin file is x86 multiboot file or not
grub-file --is-x86-multiboot my_kernel.bin

# building the iso file
mkdir -p isodir/boot/grub
cp my_kernel.bin isodir/boot/my_kernel.bin
cp grub.cfg isodir/boot/grub/grub.cfg
grub-mkrescue -o my_kernel_x86.iso isodir
