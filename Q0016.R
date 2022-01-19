num_doubler <- function(str) {
  ## Works only for str > 10
  digits <- as.integer(unlist(strsplit(str, split="")))
  carry_on <- 0
  sum_str <- c()
  for(i in length(digits):1) {
    if(carry_on > 0) {
      digi_double <- (digits[i] * 2) + carry_on
      carry_on <- 0
    } else {
      digi_double <- (digits[i] * 2) + carry_on
    }
    if(digi_double >= 10){
      doubled_digit <- digi_double %% 10
      carry_on <- floor(digi_double / 10)
      sum_str <- c(sum_str, doubled_digit)
    } else {
      sum_str <- c(sum_str, digi_double)
    }
  }
  if(carry_on > 0) sum_str <- c(sum_str, carry_on)
  return(paste0(sum_str[length(sum_str):1], collapse=""))
}

num <- "2"
for(i in 1:999) {
  num <- num_doubler(num)
  print(num)
}
