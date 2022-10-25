

%--------------|
is_a_puppy(rocket).%| }- term
%--------------|

% where 'puppy' is the predicate and 'rocket' is both a term,
% atom, and argument to the predicate 'puppy'
is_a_puppy(luka).
is_pet_owner(joel).
%-------------------------------|
owns(joel, pets(rocket, luka)).%| }> term
%-------------------------------|/
%          ^ compound term  ^

looks_like(rocket, 'a tuxedo-wearing raccoon').
looks_like(luka, 'a blue-eyed lion cub').
texture(rocket, 'spiky, fluffy, wolfish').
texture(luka, 'soft, light, lioness-esque').























% RULES
enjoys(Name, tummyRubs) :-
  puppy(Name),
  format('~w loves tummyRubs!\n', [Name]).


needs_to_pee(Name, Time_Since_Last_Pee) :-
  puppy(Name),
  Time_Since_Last_Pee > 30,
  format('~w needs to pee!\n', [Name]).

