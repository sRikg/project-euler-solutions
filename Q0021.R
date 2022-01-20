all_divisors <- function(x) {
    x <- as.integer(x)
    div <- seq_len(abs(x))
    factors <- div[x %% div == 0L]
    return(factors)
}

divisor_sums <- sapply(1:10000, function(i) sum(all_divisors(i)[-length(all_divisors(i))]))

counter <- c()
for(i in 1:10000) {
    current <- divisor_sums[i]
    if(current < 10000 && i != current) {
        if(sum(all_divisors(current)[-length(all_divisors(current))]) == i) counter <- c(counter, i)
    }
}

print(counter)
