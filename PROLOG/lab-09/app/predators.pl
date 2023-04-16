parent(lorem, ipsum, f).
parent(dolor, ipsum, m).

parent(ipsum, sit, m).
parent(labore, sit, f).

parent(ipsum, amet, m).
parent(labore, amet, f).

parent(consectetur, adipiscing, m).
parent(elit, adipiscing, f).

parent(sit, do, m).
parent(sed, do, f).

parent(adipiscing, eiusmod, m).
parent(amet, eiusmod, f).
parent(adipiscing, tempor, m).
parent(amet, tempor, f).
parent(adipiscing, incididunt, m).
parent(amet, incididunt, f).

grandparent(X, Y)   :- parent(X, Z, _), parent(Z, Y, _).
grandmother(X, Y)   :- parent(X, Z, f), parent(Z, Y, _).
grandfather(X, Y)   :- parent(X, Z, m), parent(Z, Y, _).

maternal_grandmother(X, Y)   :- parent(X, Z, f), parent(Z, Y, f).
maternal_grandparent(X, Y)   :- parent(X, Z, _), parent(Z, Y, f).