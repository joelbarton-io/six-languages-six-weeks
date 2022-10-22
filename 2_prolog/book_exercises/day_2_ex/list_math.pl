count(0, []). % base case

count(Count, [H|T]) :-
  count(TailCount, T), % recursive case
  Count is TailCount + 1.


/*
issue the query:  count(What, [1, 2]).

try and fails to unify with base case fact: count(0, []) != count(What, [1, 2])

but can't, so we move on to the rule...

where we unify, thus binding the variables:
  What -> Count

  H -> 1

  T -> [2]

The first subgoal: count(TailCount, T) becomes ->  count(TailCount, [2])

attempt to unify with the base case fact: count(0, []) != count(TailCount, [2])

but can't, so we move to the rule...

where we unify, thus binding the variables:
  TailCount -> Count

  H -> 2

  T -> []

the first subgoal: count(TailCount, T) becomes ->  count(TailCount, [])

we then successfully unify with the base case fact count(0, []) == count(TailCount, [])

then the recursion unwinds for the 2 recursive calls, adding 1 twice to the value of TailCount until Count = 2.

*/









sum(0, []). % base case

sum(Total, [H|T]) :-
  sum(Sum, T), % recursive case
  Total is H + Sum.

/*
QUERY: sum(What, [1, 2, 3]).

UNSUCCESSFUL UNIFICATION: sum(What, [1, 2, 3]) != BASE CASE

UNIFICATION WITH rule: sum(Total, [H|T]), thus binding:
  - What to Total
  - H to 1
  - T to [2, 3]

  RECURSIVE CALL: sum(Sum, T) -> sum(Sum, [2, 3])
  UNSUCCESSFUL UNIFICATION: sum(Sum, [2, 3]) != BASE CASE

UNIFICATION WITH rule: sum(Total, [H|T]), thus binding:
  - Sum to Total
  - H to 2
  - T to [3]

  RECURSIVE CALL: sum(Sum, T) -> sum(Sum, [3])
  UNSUCCESSFUL UNIFICATION: sum(Sum, [3]) != BASE CASE

UNIFICATION WITH rule: sum(Total, [H|T]), thus binding:
  - Sum to Total
  - H to 3
  - T to []

  RECURSIVE CALL: sum(Sum, T) -> sum(Sum, [])
  SUCCESSFUL UNIFICATION: sum(Sum, []) == BASE CASE

    SUM = 0

*/







/*
average(Average, List) :- sum(Sum, List), count(Count, List), Average is Sum/Count. */




