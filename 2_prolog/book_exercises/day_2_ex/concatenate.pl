% concatenate(l1, l2, l3).
% concatenating an empty list [] to List should == List
% L1 + L2 == L3  IF:  the heads of L1 & L3 match
%                AND: concatenating the T of L1 with the T of L2 gives the T of L3

% concatenate([1, 2], [3], What)

concatenate([], List, List).

  concatenate([H|T1], List, [H|T2]) :- concatenate(T1, List, T2).
% concatenate([1|[2]], [3], [1|Tail2-A]) :- concatenate([2], [3], [Tail2-A])



