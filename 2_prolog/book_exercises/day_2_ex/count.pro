count(0, []). % fact, (base case; boundary condition)

count(Length, [H|Tail]) :-
  count(TailLength, Tail), % subgoal, (recursive call)
  Length is TailLength + 1. % exit (unwind)





















% format('TailLength: ~w \nTail: ~w \n\n', [TailLength, Tail]),























% '_279' we can think of this as an internal pointer to a Variable

/*
line#   call#  op.type
--|-------|-----|-----
  1       1     Call: count(_279, [1,2])
  2       2     Call: count(_352, [2])
  3       3     Call: count(_376, [])
  3       3     Exit: count(0, [])
  4       3     Call: _404 is 0+1
  4       3     Exit: 1 is 0+1
  2       2     Exit: count(1, [2])
  5       2     Call: _279 is 1+1
  5       2     Exit: 2 is 1+1
  1       1     Exit: count(2, [1,2])
--|-------|-----|-----
*/
