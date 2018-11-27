reino(rhodi, 884, 878).
reino(anarawd, 878, 916).
reino(hywel_dda, 916, 950).
reino(lago_ap_idwal, 950, 979).
reino(hywal_ap_Ieuaf, 979, 965).
reino(cadwallon, 985, 986).
reino(maredudd, 986, 999).

reiDoPedaco(R, X) :- reino(R, V, W), X >= V, X =< W.

:- initialization(main).

main:-
	repeat,
	read(X),
	reiDoPedaco(R, X),
	write(R),nl,
	halt(0).
