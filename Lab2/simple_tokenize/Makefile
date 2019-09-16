main2: prog.l
	flex prog.l
	gcc -o a.out lex.yy.c
	./a.out <input.c> output.txt


main3: prog2.l
	flex prog2.l
	gcc -o a.out lex.yy.c
	./a.out <input.c> output2.txt

