fib := method(count, 

n0 := 1
n1 := 1
n2 := 0

n0 println
n1 println

for(i, 3, count,1, 
n2 = n1 + n0
n2 println
n0 = n1
n1 = n2
);
);

fib(4)

//q1
fib := method(n, if(n <= 2, 1, fib(n-1) + fib(n-2)))

fib(1) println
fib(4) println


//Q2
// Override the / method on object, then check if denominator is zero & return 0 if true.

