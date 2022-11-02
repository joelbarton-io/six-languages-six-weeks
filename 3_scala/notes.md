# day 1
## types
- Integers are objects
- almost everything in Scala is an object
- strings must be closed by `" "` not `' '`
- Scala is strongly typed but can use type inference given context clues for certain situations like concatenating an `Int` with a `String`, unless that string is a representation of a number
- `val` vs `var` (immutable vs mutable variable declaration)
- can bind types in sc, but don't have to, Scala can infer type
- `Nil` is an empty list
- Numbers and `Nil` are not treated like booleans, so using them in a boolean context like a conditional statement will produce an exception
### static vs strongly typed
- *"strong typing means the language detects when two types are compatible, throwing an error or coercing the types if they are not."*
## loops
- `for, foreach, while`, all the normal stuff


## Ranges & Tuples
- `until` is non-inclusive (`val range = 0 until 10`) up until end of range
- `to` is inclusive (`val range = 0 to 10`) goes up to end of range
- `1` is the default step value
- can involve other data types list `Strings`
- direction is not inferred

- tuples are zero indexed and accessed by `tupleName._indexVal`

## Classes
- everything after the `class` definition is considered the constructor; so basically the entire class body?
- constructor is responsible for defining instance variables and methods (excepting those which aren't passed into the constructor)
- all methods have parameter types and names (`def inform(turnDirection: String)`)
- `%` does *'modular division'*; modulus operator? or just remainder op?
- instance methods are declared in the class definition
- class
## Auxiliary Constructors
- there can be multiple constructors which come into effect based on the # of arguments provided at the time instantiating an instance of the class
- a secondary constructor is a `this(withadiff#ofargs)` method
## Extending Classes
- through the use of a companion object declared like `object TrueRing { ... }` <- can be thought of as a singleton class with class methods
- *"In Scala, you can have both an object definition and a class definition with the same name. Using this scenario, you can create class methods within the singleton object declaration and instance methods within the class declaration."*
## Inheritance
- a child class *extends* a parent class
- to *override* a method or attribute you must use `override` before the method def or attribute declaration
## Traits
- similar to a ruby *mixin* or a c++'s multiple inheritance
- like a *"partial-class implementation"*;
- use the `with` keyword after any extension of the class def
- `class Child() extends Parent() with ourTrait`

## WWLD1
- embraces OO concepts
- syntax is similar to Java; strongly and statically typed
- static typing is inferred (allowing for type inference)
- expressions in conditionals *MUST* be boolean typed; no `Integer` or `String` types
- support *tuple* and *range* objects
- doesn't support *class methods* as they are implemented in Java or Ruby, instead uses the idea of a *companion* object `object Name` where class methods live

# day 2

## *var* vs *val*
- *"mutable state limits concurrency"*
- LISP language: LISt Processing'
### Lists
- pretty standard stuff; zero indexed
- accessing a val at an index is a function, so we use `(index)` syntax
- `Nil` is equal to an empty list (!!!), nice

### Sets
- immutable, so every time we perform a 'destructive' action, a new set is produced
- adding two sets together with `++` 
### Maps
## any and nothing
## collections & functions
## more list methods
## foldLeft
## WWLD2
