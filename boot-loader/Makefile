# NASM 64-bit macOS — just run: make run
# Linking with gcc avoids long ld flags; -arch x86_64 needed on Apple Silicon.

hello: boot.asm
	nasm -fmacho64 boot.asm
	gcc -arch x86_64 boot.o -o boot

run: hello
	./boot

clean:
	rm -f boot boot.o a.out

.PHONY: run clean
