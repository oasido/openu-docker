# If you're using GCC 5.4, you would need to use `gcc` directly

all: test-arm test-intel

test-arm:
	aarch64-linux-gnu-gcc -g -ansi -pedantic -Wall test.c -o test-arm

test-intel:
	x86_64-linux-gnu-gcc -g -ansi -pedantic -Wall test.c -o test-intel

clean:
	rm -f test-arm test-intel

.PHONY: all clean
