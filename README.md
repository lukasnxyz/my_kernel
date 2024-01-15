## my_kernel
A 32-bit toy kernel I'm writing for fun.

### Quickstart
Dependency's: `gcc`, `qemu-system-x86`, `qemu-ui-gtk`

```bash
$ ./build.sh
$ ./run.sh
```

### Todo
- Makefile
- putc()
- putchar()
- puts()

### Notes
- Magic: is a fixed hexadecimal number to identify the head (starting point) of the kernel to be
  loaded.
- Flags: all boot modules loaded
- Checksum: must be sum of magic number and flags
- x86, x86-32, i386, i686 is 32 bit (number of bits in a register of the cpu)
- x64, x86-64 is 64 bit

### Reference
- [Create Your Own Kernel In C](https://www.codeproject.com/Articles/1225196/Create-Your-Own-Kernel-In-C-2)
- [What is a Kernel?](https://en.wikipedia.org/wiki/Kernel_(operating_system))
- [osdev.org](https://osdev.org/Main_Page)
