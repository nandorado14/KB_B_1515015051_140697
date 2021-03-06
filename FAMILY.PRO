/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  FAMILY
 FileName: FAMILY.PRO
 Purpose: No description
 Written by: Visual Prolog
 Comments:
******************************************************************************/


database - tmp
  son(STRING,STRING)
  sister(STRING,STRING)
  brother(STRING,STRING)
  married(STRING,STRING)

clauses
  son("Willy","Dani").
  sister("Maria","Susan").
  brother("Haroldo","Barry").
  married("Johny","Cary").
  married("Larryu","Sule").

predicates
  father(STRING father,STRING child)
  grandfather(STRING grandfather,STRING grandchild)
  sister_in_law(STRING,STRING)

clauses
  father(A,B):-
	son(B,A).

  grandfather(A,B):-
	father(A,C),
	father(C,B).

  sister_in_law(A,B):-
	married(A,C),
	sister(C,B).
  sister_in_law(A,B):-
	brother(A,C),
	married(C,B).

goal
  sister_in_law("Johny",Z),
  format(Msg,"sister_in_law(\"Johny\",%)",Z),
  write(Msg).
%goal
% sister_in_law("Haroldo",Z).