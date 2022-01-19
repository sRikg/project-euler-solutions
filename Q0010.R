# is.prime from https://stackoverflow.com/questions/19767408/prime-number-function-in-r
is.prime <- function(n) n == 2L || all(n %% 2L:max(2, floor(sqrt(n))) != 0)

sum_primes <- function(n){
  sum <- 0
  for(i in 2:n){
    if(is.prime(i)) sum = sum + i
    if(i %% 10000 == 0) print(paste("Until ", as.character(i), " numbers are done"))
  }
  return(sum)
}

sum_primes(10)
sum_primes(2e6)