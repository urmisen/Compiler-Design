main: parser.y lexer.l
	bison -d parser.y  
	flex lexer.l  
	gcc -o a.out parser.tab.c lex.yy.c  
	./a.out <input.c> output.txt

main1: 
	bison -d second_tokenize.y  
	flex second_tokenize.l  
	gcc -o a.out second_tokenize.tab.c lex.yy.c  
	./a.out <input2.c> output2.txt

main2: cal.y cal.l
	bison -d cal.y  
	flex cal.l  
	gcc -o a.out cal.tab.c lex.yy.c  
	./a.out