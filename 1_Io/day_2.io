/* loop("forever" println) // infinite loop */

/* i := 1
while (i <= 11, i println; i = i + 1);
 */


/* for (i, 1, 11, 3, i println); // for (counter, initialValue, lastValue, optional increment, (receiver, message))

 */

/*  Object ancestors := method(
        prototype := self proto
        if(prototype != Object,
        writeln("Slots of ", prototype type, "\n---------------") prototype slotNames foreach(slotName, writeln(slotName)) writeln
        prototype ancestors))

Animal := Object clone
Animal speak := method("ambiguous animal noise" println)

Duck := Animal clone
Duck speak := method("quack" println)
Duck walk := method("waddle" println)
disco := Duck clone
disco ancestors
 */

// 1. ------------------------------------------------------
/* Fib := Object clone;

Fib recursive := method(n,
    if(n <= 2, 1, recursive(n-2) + recursive(n-1))
)

recursive(4) println */

/* 1, 1, 2, 3, 5, 8, 13 */

// 2. ------------------------------------------------------
/* Number oldDiv := Number getSlot("/")
OperatorTable addOperator("/", 2)
Number / := method(n, if (n == 0, 0, oldDiv(n))) // new div
(3 / 0) println
 */

// 3 ------------------------------------------------------

/* Arrays := Object clone
Arrays twoDimArr := list(list(1, 2, 3), list(4, 5, 6))

Arrays sum := method(arrays,
  arrSize := arrays size;
  sum := 0;

  for(index, 0, arrSize - 1,
    currArray := arrays at(index);
    currArrSize := currArray size;

    for(i, 0, currArrSize - 1,
      sum = sum + currArray at(i);
    )
  )
  sum;
)

Arrays sum(Arrays twoDimArr) println; */

// 4. ------------------------------------------------------

/* MyList := Object clone;
MyList items := list(1, 2, 3, 4, 5);
MyList length := (MyList items) size;
MyList myAverage := method(
  sum := 0;
  for(i, 0, length - 1, sum = sum + MyList items at(i))
  sum / (length);
)
MyList myAverage() println */

// 5. ------------------------------------------------------


MyList := Object clone;

MyList dim := method(x, y,
  mainList := list();

  for (i, 0, y - 1,
    minorList := list();
    for(j, 0, x - 1,
      minorList append(i);
    )
    mainList append(minorList)
  )
  mainList;
)
MyList items := MyList dim(3, 4);

/* MyList items println */

MyList set := method(x, y, value,
  MyList items at(y- 1) atPut(x - 1, value);
)

MyList set(1, 2, "X")

/* MyList items println */

MyList get := method(x, y,
  MyList items at(y- 1) at(x - 1);
)

/* MyList get(1, 2) println */
