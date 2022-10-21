% Facts

author(grrm).
author(rothfuss).
author(tolkien).
author(yanagihara).

wrote(grrm, a_Game_of_Thrones).
wrote(grrm, a_Clash_of_Kings).
wrote(grrm, a_Storm_of_Swords).
wrote(grrm, a_Feast_for_Crows).
wrote(grrm, a_Dance_with_Dragons).
wrote(rothfuss, the_Name_of_the_Wind).
wrote(rothfuss, a_Wise_Mans_Fear).
wrote(tolkien, the_Fellowship_of_the_Ring).
wrote(tolkien, the_Two_Towers).
wrote(tolkien, the_Return_of_the_King).
wrote(yanagihara, a_Little_Life).


% Facts

studies(charlie, csc135).
studies(olivia, csc135).
studies(jack, csc131).
studies(arthur, csc134).
teaches(jacobs, csc135).
teaches(kirke, csc135).
teaches(collins, csc131).
teaches(collins, csc171).
teaches(juniper, csc134).


% Rules

professor(X, Y) :- teaches(X, C), studies(Y, C).

% // X is a professor of Y if X teaches C and Y studies C.

% Queries

%?- studies(charlie, What).
%// charlie studies what? OR What does charlie study?

%?- professor(kirke, Students).

% // Who are the students of professor kirke.