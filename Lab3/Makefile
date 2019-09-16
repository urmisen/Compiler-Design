main2: cal.y cal.l
	bison -d cal.y  
	flex cal.l  
	gcc -o a.out cal.tab.c lex.yy.c  
	./a.out

main3: second.y second.l
	bison -d second.y  
	flex second.l  
	gcc -o a.out second.tab.c lex.yy.c  
	./a.out <input_3.c> output3.txt

main4: First.y First.l
	bison -d First.y  
	flex First.l  
	gcc -o a.out First.tab.c lex.yy.c  
	./a.out <input4.c> output4.txt

main5: first_tokenize_Q4.l
	flex first_tokenize_Q4.l
	gcc lex.yy.c
	./a <input5.c> output5.txt