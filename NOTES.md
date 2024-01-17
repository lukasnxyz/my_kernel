## Notes
See [Creating and Operating System](https://osdev.org/Creating_an_Operating_System)

### Building
See [GCC Cross-Compiler](https://osdev.org/GCC_Cross-Compiler)

### Todo
1. Setting up project (Makefile, etc.)
2. Calling global constructors
3. Terminal support
4. Multiboot
5. Implement Global Descriptor Table (GDT)
6. Memory Management
7. Interrupts
8. Multithreaded Kernel
9. Keyboard
10. Internal Kernel Debugger
11. Filesystem Support

1. User space
2. Program loading
3. System calls
4. OS Specific Toolchain
5. C library
6. Fork and execute
7. Shell

### Goal
1. Get to a working user shell
2. From there continue hacking on kernel, porting, extending, ...

### General things to remember
- Magic: is a fixed hexadecimal number to identify the head (starting point) of the kernel to be
  loaded
- Flags: all boot modules loaded
- Checksum: must be sum of magic number and flags
- x86, x86-32, i386, i686 is 32 bit (number of bits in a register of the cpu)
- x64, x86-64, amd64 is 64 bit
    - Amd made the x64 architecture and Intel uses it too so that why there's various names for it
      because intel didn't want to name their chips amdXYZ
- Software versioning: major.minor.patch

## References
- [osdev.org](https://osdev.org/Main_Page)

### What is?
- [What is a Kernel?](https://en.wikipedia.org/wiki/Kernel_(operating_system))

### Guides
- [Create Your Own Kernel In C](https://www.codeproject.com/Articles/1225196/Create-Your-Own-Kernel-In-C-2)
