ultimo([Head|[]], Head).
ultimo([_|Tail], Z) :- ultimo(Tail, Z).

primeiro([Head|_], Head).

eh_combinacao(Lista_1, Lista_2, Result) :-
	primeiro(Lista_1, Head_1), primeiro(Lista_2, Head_2),
	Head_1 = Head_2,
	ultimo(Lista_1, Tail_1), ultimo(Lista_2, Tail_2),
	Tail_1 = Tail_2,
	Result = "poetica";
	Result = "naopoetica".

:- initialization main.

main :- 
	read(Lista_1), nl,
	read(Lista_2), nl,
	eh_combinacao(Lista_1, Lista_2, X),
	write(X), nl,
	halt(0).
