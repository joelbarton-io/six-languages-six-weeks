% concatenate(l1, l2, l3).
% concatenating an empty list [] to List should == List
% L1 + L2 == L3  IF:  the heads of L1 & L3 match
%                AND: concatenating the T of L1 with the T of L2 gives the T of L3

% concatenate([1, 2], [3], What)

concatenate([], List, List).

concatenate([Head|Tail1], List, [Head|Tail2]) :- concatenate(Tail1, List, Tail2).
% concatenate([1|[2]], [3], [1|Tail2-A])      :- concatenate([2], [3], [Tail2-A])
% concatenate([2|[ ]], [3], [2|Tail2-B])      :- concatenate([ ], [3], Tail2-B)
% concatenate([ ], [3], Tail2-C)              :- concatenate([ ], [3], [3])

