# fibonacci sequence
Range

fib := method(n, 
    if(n > 2, 
        fib(n - 1) + fib(n - 2), 
        1
    )
)

fibLoop := method(n,
    a := 0
    b := 1
    tmp := 0
    for(i, 1, n, tmp = a + b; a = b; b = tmp)
    return a
)

"recursive - looping" println
1 to(10) foreach(n, fib(n) print; " - " print; fibLoop(n) println)
