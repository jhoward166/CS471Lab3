/*
CS471 - Programming Languages
Lab #3
Author: Howard, Joseph jhoward4@gmail.com
Date: 9-18-2014
*/
/*
Part 1
>>Definitions taken from wikipedia 
1a) relation - a relation between two sets is a collected order of pairs that contains one element from each set.
1b) function - a mathematical condition relating an input value with a corresponding output value.
1B) Every function is a relation, it is a pair of numbers, one from the possible list of inputs and one from the corresponding list of outputs.
1C) Not every relational is a function. For a function the numbers are disinct pairs, every input has exactly one corresponsing output, and every output has exactly one corresponsing input. A realtion that fits the function y=x+1 might be (x,y) = (3,4). (3,6) would not be valid for that function, but is a valid relation.

4A.1)	atoms: loves, aBoy, mia
		variables: none
		structures:
			loves()
				arity: 2
4A.2)	atoms: boxer
		vaiables: Butch
		structures:
			boxer()
				arity: 1
4A.3)	atoms: and, big, kahuna
		variables: X
		structures: 
			big()
				arity: 1
			kahuna()
				arity: 1
			and()
				arity: 2
4A.4)	atoms: hide, big, aBoy
		variables: X
		structures: 
			big()
				arity: 1
			hide()
				arity: 2
4B)
	facts: 4
	rules: 2
	clauses: 6
	predicates:	5
	head:
		likes(sam,Food)
			goal:
				indian(Food), mild(Food).
	head:
		likes(sam,Food)
			goal:
				italian(Food).
				
	
*/
/*Part 2*/
/*Question 1*/
second(triple(A,B,C),Y):-Y = B.
secondF(triple(A,B,C), B).
/* list of facts in prolog, stored in an ascii file, 'family.pl'*/
/* WE can think of "mother(mary,ann)" as meaning - */
/*                  Mary is the mother of Ann */

mother(mary, ann).
mother(mary, joe).
mother(sue, marY).
/* marY not the same as mary */
mother(sue,mary).

father(mike, ann).
father(mike, joe).
father(tom,mary).

grandparent(sue, ann). 

male(joe).
male(mike).
male(tom).

female(mary).
female(ann).
female(sue).
/*Question 2*/
parent(P,C):- mother(P,C).
parent(P,C):- father(P,C).
/*Question 4*/
daughter(P,C):-mother(P,C),female(C).
daughter(P,C):-father(P,C),female(C).
/*Question 5*/
last([X],X).
last([_|Xs],Y):-last(Xs,Y).
/*Question 6*/
isOrdered([]).
isOrdered([X]).
isOrdered([A,B|Cs]):- A < B, isOrdered(Cs).
/*Question 7*/
pyth(X, Y ,Z):- Z is X*X + Y*Y.
/*Question 8*/
triple([A,B,C],Sum):- Sum is A+B+C.
/*Question 9*/
sumOfLst([],0).
sumOfLst([A|Bs], C) :- sumOfLst(Bs, D), C is A + D.
