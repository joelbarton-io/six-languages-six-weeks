learning_goal(read_and_be_able_to_interpret_basic_prolog, 1).
learning_goal(language_anatomy, 2).
learning_goal(using_variables_and_unification, 3).
learning_goal(working_with_lists, 4).
learning_goal(recursive_in_quotes, 5).

understands(class, Task, Num) :-
  learning_goal(Task, Num).

print_a_message(Message) :-
  print(Message).
