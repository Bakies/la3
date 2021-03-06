/* 
    COMP3071 LA3 - Prolog introduction
    trains!
*/

station(hamburg).
station(bremen).
station(hannover).
station(berlin).
station(leipzig).
station(osnabruck).
station(stuttgart).
station(fulda).
station(munich).

adjacent(hamburg, bremen).
adjacent(hamburg, berlin).
adjacent(berlin, hannover).
adjacent(berlin, leipzig).
adjacent(leipzig, fulda).
adjacent(fulda, hannover).
adjacent(hannover, osnabruck).
adjacent(osnabruck, bremen).
adjacent(stuttgart, munich).

/* insert your clauses here */

adjacent_(X, Y) :- adjacent(Y, X); adjacent(X, Y).
connected(X, Y) :- adjacent_(X, Y).
connected(X, Y) :- adjacent_(X, Z), adjacent_(Y, Z). 

