num_prod_next <- function(str, num) {
  digits <- as.integer(unlist(strsplit(str, split="")))
  carry_on <- 0
  prod_str <- c()
  for(i in length(digits):1) {
    prod <- (digits[i] * num) + carry_on
    carry_on <- floor(prod / 10)
    prod_str <- c(prod_str, prod %% 10)
  }
  if(carry_on > 0) {
    prod_str <- c(prod_str, carry_on)
  }
  return(paste0(prod_str[length(prod_str):1], collapse=""))
}

factorial <- "1"
for(i in 2:100) {
  factorial <- num_prod_next(factorial, i)
}

print(sum(as.integer(unlist(strsplit(factorial, split="")))))