/* reverse([], L).
reverse([L|Ls]) :- reverse(Ls), [L].

 */
%Initially our reversed list is empty
%reverse(List, ReverseList). %:- reverse(List, [], ReverseList).

%Once we reach end of list we set ReverseList
reverse([], ReversedList, ReversedList).

%We take the head of our list and
%add it to the start of our reversed list
reverse([Head|Tail], SoFar, ReversedList) :-
  reverse(Tail, [Head|SoFar], ReversedList).