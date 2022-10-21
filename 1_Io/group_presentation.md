# history of Io
- inspired by `lisp`, `small talk`
- prototype-based

- pixar and satelite
- "io didn't take off because it was slow" - creator
- lends itself well to DSLs (small footprint) embedded systems

## basic info:
- every 'thing' is an object
- every interaction is a message
- object are cloned from existing objects ('prototypes')
- have slots, contain objects
- a message returns a value (or method)
- if an object cannot respond to a message, it looks up it's ancestors

## syntax
- just objects & messages
- no classes
- no keywords, just messages (if statement is a message)
- `object` is root object
- types are just tools to organize our code
- methods are also objects, their type is `Block`

- `Lobby` is the main (master) namespace for an Io program that contains all the objects in the program

- collections : list (array) & map (hashes)
- list supports many normal array methods

- singletons : ` true false nil`

## day 2

- `OperatorTable`, precedence of operators, ability to add operators to the current language implementation!

- "REFLECTION": capabilities within a language that allow for introspection (ability to observe message/object information)
  - `call` method to inspect information about the message (some method)
  - `call sender` (sender is `Lobby`)

## day 3
- very useful to implement DSLs
- `forward` method is how inheritance is implemented, checks if the object's prototype can respond to the message

- big strength: concurrency
  - the ability to run multiple things at the same time

- @@runs, @@runs -> hey we want these two messages to be actors and run concurrently (in their own threads)

- ACTORS : universal concurrent primitive (asynchronous messages)
  - can send messages, process messages, create new actors
- FUTURE : result object returned from an asyc messages call

