% FACTS
puppy(rocket).
puppy(luka).


owner(joel).
owns(joel, pets(rocket, luka)).


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
  Time_Since_Last_Pee > 20,
  format('~w needs to pee!\n', [Name]).

