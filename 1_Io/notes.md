# day 1:

terms:
- "reflection":


syntax:
- chains messages together, each message returns an object
- all objects are have prototypes (they are all copies of other objects)
- no classes or modules or meta classes or interfaces
- objects are collections of 'slots', simple containers
- object types begin with uppercase letters
- methods are also objects and can be placed in slots and invoked by invoking the slot


useful methods (?) to remember:
- `slotName`
- `getSlot`

```io
> "hi ho, Io" print
```
> [receiver] [message]

```io
Vehicle := Object clone

Vehicle desc := "something to take you far away"
Vehicle slotNames
// ==> list(type, desc)
```

# answers:
- is Io strongly typed? -> yes, an error is thrown when we try to add `"1" + 1`; no type coercion
- `0` is `true` (`0 asBoolean` -> `true`)
- `""` is `true` (`"" asBoolean` -> `true`)
- `nil` is neither `true/false` (`nil asBoolean` -> `nil`)
- `:=` creates (or reassigns) a private attribute for an object
- `::=` creates a public attribute on an object
- `=` attempts to assign a value to an existing slot, if no slot, then an error is thrown


# day 2
- `loop("forever" println)` // infinite loop

```io
i := 1
while (i <= 11, i println; i = i + 1);

// for
for (i, 1, 11, 3, i println);
```
- `for (counter, initialValue, lastValue, optional increment, (receiver, message))`

- `if` conditional is actually implemented as a function `if(condition, truecode, false code)`
```io
if ("", "is truthy" println, "is falsy" println)
is truthy
==> is truthy
```
- to get a list of operators: `OperatorTable`; lists precedence as well
```io
false xor := method(bool, if(bool, true, false))
==> method(bool,
    if(bool, true, false)
```

---

- "message reflection"
- a message has 3 components: sender, target, arguments

- [mostly just new syntax]

# day 3

- Io is excellent for writing domain specific languages
- has outstanding concrrency libraries
  - coroutines: a function with multiple entry and exit points