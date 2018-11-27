/* Soma de todos os elementos da lista */
soma([],0).
soma([Head|Tail], Sum) :- soma(Tail, NewSum), Sum is Head + NewSum.

/* Encontra o menor elemento da lista */
diferenca(Lista, X) :- max_member(Maior, Lista),
	min_member(Menor, Lista),
	(X is Maior - Menor).
	
/* Efetua o cálculo da questão */
soma_e_diferenca(Lista, Result) :- diferenca(Lista, X),
	soma(Lista, Y),
	Result is Y + X.

:- initialization main.

main :- 
	read(Lista), nl,
	soma_e_diferenca(Lista, Result),
	write(Result), nl,
	halt(0).
	
	




