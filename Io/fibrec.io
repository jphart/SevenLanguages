// fib := method(n, if(n < 2) then(1) else(fib(n-1) + fib(n-2)))


fib := method(n, if(n <= 2, 1, fib(n-1) + fib(n-2)))

fib(1) println
fib(4) println