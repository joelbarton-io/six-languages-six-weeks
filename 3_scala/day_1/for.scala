object Main {
  def main(args: Array[String]): Unit = {
    def forLoop = {
      println( "for loop using Java-style iteration" )
      for(i <- 0 until args.length) {
        println(args(i))
      }
    }
    // forLoop
    def rubyStyleFor = {
      println( "for loop using Ruby-style iteration" )
      args.foreach { arg =>
        println(arg)
      }
    }
    rubyStyleFor
  }
}
