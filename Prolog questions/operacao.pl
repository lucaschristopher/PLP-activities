operacao(X, Y, Z, Op, true):- Op == and, X, Y, Z.
operacao(X, Y, Z, Op, false):- Op == and.
operacao(X, Y, Z, Op, true):- Op == or, X.
operacao(X, Y, Z, Op, true):- Op == or, Y.
operacao(X, Y, Z, Op, true):- Op == or, Z.
operacao(X, Y, Z, Op, false):- Op == or.

:-initialization(main).
main:-
	read(Num1), nl,
	read(Num2), nl,
	read(Num3), nl,
	read(Op), nl,
	operacao(Num1, Num2, Num3, Op, Res),
	write(Res), nl,
	halt(0).
