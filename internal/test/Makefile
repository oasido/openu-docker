# If you're using a newer GCC version and installed the dependencies commented in the Dockerfile:
# Compile for ARM chips using `aarch64-linux-gnu-gcc`
# Compile for x86_64 chips using `x86_64-linux-gnu-gcc`
#
# If you're using `gcc` "as is", your program would compile for your own chip only.

all: test

test:
	gcc -g -ansi -pedantic -Wall test.c -o test

clean:
	rm -f test

.PHONY: all clean
