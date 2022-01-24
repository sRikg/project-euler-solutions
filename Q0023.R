all_divisors <- function(x) {
    x <- as.integer(x)
    div <- seq_len(abs(x))
    factors <- div[x %% div == 0L]
    return(factors)
}

divisors_sum <- sapply(2:28123, function(i) sum(all_divisors(i)[-length(all_divisors(i))]))

abundant_nums <- c()
for(i in 1:length(divisors_sum)){
    if((i+1) < divisors_sum[i]) abundant_nums <- c(abundant_nums, i+1)
}

non_abundunt_sums <- c()
for(i in 24:28123) {
    rest_diff <- i - abundant_nums[abundant_nums < i]
    if(sum(rest_diff %in% abundant_nums) == 0) non_abundunt_sums <- c(non_abundunt_sums, i)
}

print(sum(1:23) + sum(non_abundunt_sums))