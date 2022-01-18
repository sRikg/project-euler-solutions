# is.prime from https://stackoverflow.com/questions/19767408/prime-number-function-in-r
is.prime <- function(n) n == 2L || all(n %% 2L:max(2, floor(sqrt(n))) != 0)

q7 <- function(n){
  primes <- 2
  i <- 3
  while(length(primes) < n){
     if(is.prime(i)){
       primes <- c(primes, i)
     }
    i = i + 1
  }
  return(primes[length(primes)])
}

print(q7(6))
print(q7(10001))
