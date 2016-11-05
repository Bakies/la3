/* 
    COMP3071 LA3 - Prolog introduction
*/

/* insert your clauses here */
/* Provide at least 6 facts and 4 rules and one conjunction in a rule. */
good(luke).
good(leia).
good(obiwan).
evil(emperor).
evil(maul).

hasLightsaber(luke).
hasLightsaber(obiwan).
hasLightsaber(emperor).
hasLightsaber(maul).

jedi(X) :- good(X), hasLightsaber(X).
sith(X) :- evil(X), hasLightsaber(X).
/* put your example queries in this comment under your clauses 
?- [la3a].
true.

?- hasLightsaber(luke).
true.

?- jedi(X).
X = luke ;
X = obiwan.

?- sith(X).
X = emperor ;
X = maul.

?- sith(luke).
false.

?- jedi(leia).
false.

*/
