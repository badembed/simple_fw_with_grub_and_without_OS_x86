start: mykernel.bin
	@echo "mykernel.bin"

mykernel.bin: main.o boot.o
	ld -m elf_i386 -T linker.ld -o mykernel.bin ./main.o ./boot.o

main.o:
	gcc -m32 -march=i386 -c main.c -o main.o

boot.o:
	nasm -f elf32 ./boot.asm

clean:
	rm -f mykernel.bin main.o boot.o