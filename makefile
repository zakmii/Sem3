hehe:
	yasm -f elf64 -o test.o test.asm
	gcc -static test.o -o test
run:
	./test 
clean: 
	rm *.o test

