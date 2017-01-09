
x:	main.o sum.o
	gcc -o x sum.o main.o

main.o:	main.s
	gcc -c main.s

sum.o:	sum.s
	gcc -c sum.s

main.s:	main.c
	gcc -O2 -S main.c

clean:	
	rm -f x *.o main.s
