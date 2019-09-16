main: tokenize.l
	flex tokenize.l
	gcc lex.yy.c
	./a <input.txt> output.txt