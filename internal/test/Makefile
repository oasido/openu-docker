PROGRAM = test

ARCH_32 = i386
ARCH_64 = x86_64
ARCH_ARM32 = arm
ARCH_ARM64 = aarch64

CC_X86 = gcc
CC_ARM32 = arm-linux-gnueabihf-gcc
CC_ARM64 = aarch64-linux-gnu-gcc

CFLAGS_32 = -Wall -g -ansi -pedantic -m32
CFLAGS_64 = -Wall -g -ansi -pedantic -m64
CFLAGS_ARM32 = -Wall -g -ansi -pedantic
CFLAGS_ARM64 = -Wall -g -ansi -pedantic

all: compile-32 compile-64 compile-arm32 compile-arm64

# x86 32-bit
compile-32:
	$(CC_X86) test.c $(CFLAGS_32) -o $(PROGRAM)-$(ARCH_32)

# x86 64-bit
compile-64:
	$(CC_X86) test.c $(CFLAGS_64) -o $(PROGRAM)-$(ARCH_64)

# ARM 32-bit
compile-arm32:
	$(CC_ARM32) test.c $(CFLAGS_ARM32) -o $(PROGRAM)-$(ARCH_ARM32)

# ARM 64-bit
compile-arm64:
	$(CC_ARM64) test.c $(CFLAGS_ARM64) -o $(PROGRAM)-$(ARCH_ARM64)

clean:
	rm -f $(PROGRAM)-$(ARCH_32) $(PROGRAM)-$(ARCH_64) $(PROGRAM)-$(ARCH_ARM32) $(PROGRAM)-$(ARCH_ARM64)

.PHONY: all clean compile-32 compile-64 compile-arm32 compile-arm64
