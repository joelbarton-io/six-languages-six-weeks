object Main {
  def main(args: Array[String]): Unit = {
    import scala.util.Random

    class Board {
      def makeBoard() = {
        val rand = new Random()
        val options = Seq(
          "X",
          "O",
          " "
        )
        var board = Seq[Seq]()

        (1 to 3).foreach { _ =>
          var i = 0
          var row = Seq[String]()

          // while(i < 3) {
          //   row = row :+ options(rand.nextInt(options.length))
          //   i += 1
          // }

          board = board :+ row
        }

        println(board)
      }
    }

    new Board().makeBoard()



/*
    def getRandomElement[A](seq: Seq[A], random: Random): A = {
      seq(random.nextInt(seq.length))
    }

    println(options) */



  }
}