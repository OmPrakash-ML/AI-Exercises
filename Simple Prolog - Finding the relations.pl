% Facts
parent(john, jim). 
parent(john, sara). 
parent(jane, jim). 
parent(jane, sara). 
parent(bob, john). 
parent(bob, lisa). 
parent(lisa, ann).

% Rules
grandparent(X, Z) :- 
    parent(X, Y), 
    parent(Y, Z).

sibling(X, Y) :- 
    parent(Z, X), 
    parent(Z, Y), 
    X \= Y.
