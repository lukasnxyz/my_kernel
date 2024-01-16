## Notes

### Kernel todo
- Makefile
- putc()
- putchar()
- puts()

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
