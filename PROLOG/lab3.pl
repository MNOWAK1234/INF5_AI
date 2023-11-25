next(�winouj�cie,ko�obrzeg).
next(�winouj�cie, szczecin).
next(ko�obrzeg,ustka).
next(ustka, gda�sk).
next(gda�sk,toru�).
next(gda�sk,olsztyn).
next(olsztyn,toru�).
next(olsztyn,bia�ystok).
next(szczecin,bydgoszcz).
next(szczecin, gorz�w-wlkp).
next(bydgoszcz,toru�).
next(bydgoszcz,pozna�).
next(pozna�,toru�).
next(gorz�w-wlkp,pozna�).
next(gorz�w-wlkp,zielona-g�ra).
next(zielona-g�ra,pozna�).
next(zielona-g�ra,wroc�aw).
next(toru�,��d�).
next(toru�,warszawa).
next(bia�ystok, warszawa).
next(bia�ystok,lublin).
next(pozna�,��d�).
next(warszawa,radom).
next(warszawa,��d�).
next(radom,lublin).
next(radom,kielce).
next(wroc�aw,��d�).
next(��d�,radom).
next(��d�,cz�stochowa).
next(cz�stochowa,kielce).
next(cz�stochowa,katowice).
next(katowice,krak�w).
next(kielce,krak�w).
next(kielce,rzesz�w).
next(lublin,kielce).
next(lublin,rzesz�w).
next(krak�w,rzesz�w).

po��czenie(A,B):-next(A,B).
po��czenie(A,B):-next(A,C),po��czenie(C,B).

zjazd(A,B,C):-next(C,B),C=A.
zjazd(A,B,X):-next(E,X),zjazd(A,X,E),next(X,B).

trasa(A,B,obok(A,B)):-next(A,B).
trasa(A,B,obok(A,D)):-next(A,C),trasa(C,B,D).

trasa2(A,B,obok(A,B)):-next(A,B).
trasa2(A,B,obok(D,B)):-next(C,B),trasa2(A,C,D).

trasa3(A,B,[A | [B | []]]):-next(A,B).
trasa3(A,B,[A | D]):-next(A,C),trasa3(C,B,D).
