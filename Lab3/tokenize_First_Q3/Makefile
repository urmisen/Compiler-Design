main2: lexer.l
	flex lexer.l
	gcc -o a.out lex.yy.c
	./a.out <input.c> output.txt
