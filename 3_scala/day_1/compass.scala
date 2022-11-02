object Main {
  def main(args: Array[String]): Unit = {

    // START:constructor
    class Compass {
      val directions = List("north", "east", "south", "west")
      var bearing = 0
      print("Initial bearing: ")
      println(direction())
    // END:constructor
    // START:direction
      def direction() = directions(bearing)

      def inform(turnDirection: String) = {
        println("Turning " + turnDirection + ". Now bearing " + direction())
      }
    // END:direction

    // START:turns
      def turnRight() = {
        bearing = (bearing + 1) % directions.size
        inform("right")
      }

      def turnLeft() = {
        bearing = (bearing + (directions.size - 1)) % directions.size
        inform("left")
      }
    // END:turns
    }

/*     val myCompass = new Compass()

    myCompass.turnRight()
    myCompass.turnRight()

    myCompass.turnLeft()
    myCompass.turnLeft()
    myCompass.turnLeft() */

    class Person(first_name: String) {
      println("Outer constructor")

      def this(first_name: String, last_name: String) = {
        this(first_name)
        println("Inner constructor")
      }
      def this(first_name: String, last_name: String, age: Integer) = {
        this(first_name)
        println("Innermost constructor")
      }

      def talk() = println("Hi")
    }

    new Person("Joel")
    new Person("Joel", "Barton")
    new Person("Joel", "Barton", 25)

  }
}