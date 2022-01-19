# all_divisors modified from https://stackoverflow.com/questions/6424856/r-function-for-returning-all-factors
all_divisors <- function(x) {
    x <- as.integer(x)
    div <- seq_len(abs(x))
    factors <- div[x %% div == 0L]
    return(factors)
}

q12 <- function(n){
    max_len <- 1
    i <- 1
    i_triangle <- 0
    while (max_len < n){
        i_triangle <- i_triangle + i
        print(i_triangle)
        len_divisors <- length(all_divisors(i_triangle))
        if(max_len < len_divisors) max_len <- len_divisors
        i = i + 1
        if(i %% 1e5 == 0) print(paste0(as.character(i), " is done"))
    }
    return(i_triangle)
}

q12(5)
# Note: This will take an ungodly amount of time. So bear with it.
# Note to self: in future, write a better code to reduce it.
q12(500)