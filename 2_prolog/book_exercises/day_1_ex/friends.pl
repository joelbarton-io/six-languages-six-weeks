/*     atom */
likes(grommit, cheese). /* fact */
likes(wallace, cheese). /* fact */
likes(wendolene, sheep). /* fact */

/*               subgoal , subgoal */
friend(X, Y) :- \+(X = Y), likes(X, Z). /* rule */