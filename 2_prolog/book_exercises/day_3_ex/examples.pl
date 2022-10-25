% simply chopping off the head of the array & using a variable to 'capture' the value
% FACT:
first([H|Tail], H).






% continously recurse until the base case is reached (FACT #1).

% FACT #1:
last(X, []). % base case.

% RULE #1:
last(List, Tail) :- last([H|Tail], Tail). % sole sub-goal is the recursive case


