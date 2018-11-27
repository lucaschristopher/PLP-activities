del_todas(Elem,[ ],[ ]).
del_todas(Elem, [Elem|Y], Z) :- del_todas(Elem,Y,Z).
del_todas(Elem,[Elem1|Y], [Elem1|Z]) :- Elem \== Elem1,
del_todas(Elem,Y,Z).

retirar_rep([ ],[ ]).
retirar_rep([Elem|Cauda],[Elem|Cauda1]) :- del_todas(Elem,Cauda,Lista),
retirar_rep(Lista,Cauda1).

:- initialization main.

main :- 
    read(Entrada), nl,
    retirar_rep(Entrada, Result),
    write(Result), nl,
    halt(0).
