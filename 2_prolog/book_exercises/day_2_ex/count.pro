count(0, []). % fact, (base case; boundary condition)

count(Length, [H|Tail]) :-
  count(TailLength, Tail), % subgoal, (recursive call)
  Length is TailLength + 1. % exit (unwind)









/* predicate Variable, 
| ?- count(Length, [1, 2, 3]).
line#   call#  operation    expression
--|-------|--------|---------------|--------------
  1       1       Call:      count(_279,[1,2,3]) ?   < initial query
  2       2       Call:      count(_354,[2,3]) ?
  3       3       Call:      count(_378,[3]) ?
  4       4       Call:      count(_402,[]) ?
  4       4       Exit:      count(0,[]) ?           < hits base case fact!
  5       4       Call:      _430 is 0+1 ?           < begins 'unwind'
  5       4       Exit:      1 is 0+1 ?
  3       3       Exit:      count(1,[3]) ?
  6       3       Call:      _459 is 1+1 ?
  6       3       Exit:      2 is 1+1 ?
  2       2       Exit:      count(2,[2,3]) ?
  7       2       Call:      _279 is 2+1 ?
  7       2       Exit:      3 is 2+1 ?
  1       1       Exit:      count(3,[1,2,3]) ?      < finally unifies Length & 3
--|-------|--------|---------------|--------------

Length = 3 ?

(1 ms) yes

*/
