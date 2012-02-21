def whileLoop {

	var i = 1
	while(i <= 3) {
		println(i)
		i += 1
	}
}

whileLoop

def forLoop{
	for(i <- 0 until args.length){
		println(args(i))
	}
}

forLoop

def rubyStyle{
println("Ruby style")

args.foreach{ arg =>
	println(arg)
}
}
rubyStyle