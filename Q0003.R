# is.prime from https://stackoverflow.com/questions/19767408/prime-number-function-in-r
is.prime <- function(n) n == 2L || all(n %% 2L:max(2, floor(sqrt(n))) != 0)

n <- 600851475143
sqrt_n <- sqrt(n)

largest_divisor <- 0
for(i in 2:sqrt(n)) {
  if(n %% i == 0 && is.prime(i)){
    largest_divisor <- i
  }
}

print(largest_divisor)