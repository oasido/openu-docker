PROGRAM = test

ARCH_32 = i386
ARCH_64 = x86_64

CFLAGS_32 = -Wall -g -ansi -pedantic -m32
CFLAGS_64 = -Wall -g -ansi -pedantic -m64

all: compile-32 compile-64

compile-32:
	gcc $(PROGRAM).c $(CFLAGS_32) -o $(PROGRAM)-$(ARCH_32)

compile-64:
	gcc $(PROGRAM).c $(CFLAGS_64) -o $(PROGRAM)-$(ARCH_64)

clean:
	rm -f $(PROGRAM)-$(ARCH_32) $(PROGRAM)-$(ARCH_64) a.out

.PHONY: all clean compile-32 compile-64
