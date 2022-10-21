Parent := Object clone

Parent sayHi := method("Hello, World!" println)
Parent operation := method("1 plus 2 equals 3" println)
Parent sayBye := method("Goodbye, World..." println)

Parent sayHi
Parent operation
Parent sayBye

Parent traits := list("tall", "old", "wise")
/* Parent traits println */

Child := Parent clone
/* Child traits println */

Child slotNames println // answer to # 3