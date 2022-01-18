# Fibonacci function code from https://stackoverflow.com/questions/48566319/fibonacci-sequence-in-r
fib <- function(x, y) {
  s <- x + y
  c(s, if (s < 4000000) fib(y, s))
}

f <- fib(0, 1)
sum(f[f %% 2 == 0])