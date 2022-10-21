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
### Lists and Tuples
### Unification part 2
### Lists and Math
### Using Rules in Both Directions
### WWL Day 2

### Day 3 (pg 120)
### Solving Sudoku
### Eight Queens
### WWL Day 3

### Wrapping up Prolog
### Strengths
### Weaknesses
### Final Thoughts