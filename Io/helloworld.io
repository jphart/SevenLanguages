"hello world" println

Person := Object clone
Person age := 0
Person name := ""
Person sayHello := method(("hello! I am " .. name) println)

alice := Person clone
alice age = 5
alice name = "Alice"

alice println
alice sayHello
