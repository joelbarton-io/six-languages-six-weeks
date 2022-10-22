# Prolog

## general (pg 95)
- "it's about knowing how to ask the right question"
- extremely capable in some respects, very limited in others
- previous languages: (Ruby & Io) were imperative, Prolog is declarative
- user inputs some facts and inferences; Prolog does the reasoning for you
  - it's like describing the qualities you like in bread to a master baker and they do the rest (implementation) (don't have to know *how*)
- one of the first successful logic programming languages

## about Prolog (pg 96)
- gained popularity in *natural language processing*
- a *rules-based* language that works with *databases*
- has TWO parts: way to express data and one to query that data
  - the DATA is just logical rules

  - building blocks of language:
    1. Facts (**'Rocket is a puppy; Rocket loves tummy rubs'**)
    2. Rules (**'An animal likes tummy rubs if it is a puppy'**)
    3. Query (**'Does Rocket like tummy rubs?'**)

  - FACTS and RULES are contained in the *knowledge base*
  - we QUERY the compiled *knowledge base* to retrieve information

## Day 1 (pg 97)

- "I guarantee either you will change the way you think or you’ll fail"

### Basic Facts
- facts are direct observations of our world, rules are inferences about our world
- "Unless Prolog is waiting on an intermediate result, it will respond with yes or no."


### Basic Inferences and Variables
- `\+` : logical negation
- `:-` : if (condition)
- `,`  : and

### Filling in the Blanks
- facts (relational statement) and rules (logic-based relational expression)
- `;` or `a`  : when querying with a variable to go next or get all

### Map Coloring
- basically describing the relationships between the various states which border one another through three distinguishing qualities: (red, green, blue)

### Where's the Program?
- based on the visual relationships we see in the map (world), we make 'observations' which we express through various relationships and the program does the rest; we don't do much other than gather info

### Unification part 1 (pg 103)
- a different approach to variable assignment (?)
- `=` means make both sides the same

  - the process of finding the values that make both sides *'match'*
  - "BOTH SIDES OF THE IMPLICATION" (pg 104 paragraph 2)

  - unification can occur on both 'sides' of the implication
  - so we can have some parameters (x, y, z), which relate to other values,
  then, when we query we can pass in different parameters, these parameters unify with the (x, y, z) parameters, which then reports the
  - works through all combinations of the variables
### Prolog in Practice (interview with Brian Tarbox)
- "Once you grok Prolog, you understand that variables either have particular values or are unbound, but it was unsettling at the time."
- "If you can describe the problem, you have solved the problem"
- no partial solutions, either solves it or responds with 'no'

### WWL Day 1.
- Queries have two forms:
  1. specify a 'fact' and prolog will tell us if the fact is true or not (yes/no)
  2. build a query with 1+ variables, prolog then tries to compute all the possibilities that make some fact true
- Prolog works through 'rules' (syntax that involve `:-` (if)) in order (based on position in knowledge base)
### Day 2 (pg 109)
### Recursion
- since Prolog is declarative, an iterative approach isn't feasible so instead we're using declarative recursion
- ####### "clause" is that anything separated by a `,`/ `:-` ? or something different entirely?
  - does the term 'clause' apply to just rules or facts as well?

- think of `.` between clauses as logical OR
- think of `,` between sub-goals as logical AND

- ####### if we were to define the same-named rule predicate in a different order, does that change how our code works?
- if the recursive subgoal (e.g. `ancestor(Z, Y).` from the second clause), Prolog optimizes the call, thus keeping the memory use constant or `O(1)`

### Lists and Tuples (pg 111)
- lists: variable length containers
- tuples: fixed length containers

- ^THESE ARE THE TWO CORE DATASTRUCTURES IN PROLOG

### Unification part 2
- two tuples *UNIFY* if all elements unify, this applies when using variables (upper cased strings, first letter)
```pl
| ?- (A, 2, C) = (1, B, 3).

    A=1
    B=2
    C=3

yes
```
- it doesn't matter which side the variable(s) are on, so long as unification is possible they will unify
- somethings lists can do that tuples can't:
``` pl
| ?- [a, b, c] = [Head|Tail].

Head = a
Tail = [b,c]

yes
```
- also works with a single element list, however if the list is empty `[]`, this deconstruction pattern doesn't work
- the `_` underscore is the *WILDCARD* and unifies with everything (including Variables)
- ####### is unification sort of similar to *resolving* things (cancelling out values on either side of `=`)???

### Lists and Math (pg 114)
- ####### shouldn't the `count(0, [])` be `count([], 0)` ?  this is probably trivial, but a bit deceptive
- "logical rule recursion" ;

- there seems to be a typo on page 115 where he says: 'We move on to satisfying the goals for the second rule, `count(Count, [Head|Tail])`.

### Using Rules in Both Directions
- `append` can give you a variety of tools
  1. lie detector `append([oil], [water], [oil, water]).`
  2. list builder `append([tiny], [bubbles], What).`
  3. list subtraction `append([dessert_topping], Who, [dessert_topping, floor_wax]).`
  4. computes permutations `append(One, Two, [apples, oranges, bananas]).`

- ####### A main reason why this the recursion is hard to understand is that we're nesting rules
  - so each time we try to prove a subgoal, the variables are different

### WWL Day 2

### Day 3 (pg 120)
### Solving Sudoku
### Eight Queens
### WWL Day 3

### Wrapping up Prolog
### Strengths
### Weaknesses
### Final Thoughts


- UNIFICATION: "Two atomic formulas unify if there exists an assignment to the variables in them under which the two formulas become identical."
- variables pretty much disappear as soon as the query ends, there are no share or retained values for similarly named variables in different queries/goals