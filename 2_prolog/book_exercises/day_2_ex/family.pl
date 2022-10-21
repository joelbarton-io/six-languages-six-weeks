father(zeb, john_boy_sr).
father(john_boy_sr, john_boy_jr).

ancestor(X, Y) :- father(X, Y).                 % clause 1; depends on a fact: (father(..., ...))
ancestor(X, Y) :- father(X, Z), ancestor(Z, Y). % clause 2;
% X IS an ancestor of Y IF:
                        % X is the father to Z AND:
                        % Z is an ancestor to Y
% EXAMPLE QUERIES:

% ?- ancestor(zeb, Who).

      % Zeb is an ancestor() to Who?
      %   Who = john_boy_sr ? a
      %   Who = john_boy_jr
% ?- ancestor(Who, john_boy_jr).

      % Who are ancestor()s to john_boy_jr?
      %   Who = john_boy_sr ? a
      %   Who = zeb
