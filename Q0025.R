srik_sum_er <- function(num1_in_str, num2_in_str) {
  num1_digits <- rev(as.integer(unlist(strsplit(num1_in_str, split=""))))
  num2_digits <- rev(as.integer(unlist(strsplit(num2_in_str, split=""))))
  sum <- c()
  carry_on <- 0
  for(i in 1:max(length(num1_digits), length(num2_digits))){
    if(is.na(num1_digits[i])) num1 <- 0 else num1 <- num1_digits[i]
    if(is.na(num2_digits[i])) num2 <- 0 else num2 <- num2_digits[i]
    temp <- num1 + num2 + carry_on
    sum <- c(sum, temp %% 10)
    carry_on <- floor(temp / 10)
  }
  if(carry_on > 0) sum <- c(sum, carry_on)
  sum <- paste0(as.character(rev(sum)), collapse="")
  return(sum)
}

num <- length(1)
fibo_1 <- "0"
fibo_2 <- "1"
counter <- 0
while(num < 1000) {
  temp <- fibo_2
  fibo_2 <- srik_sum_er(fibo_1, fibo_2)
  counter = counter + 1
  fibo_1 <- temp
  num <- length(unlist(strsplit(fibo_2, split="")))
  print(counter)
}

print(counter + 1)