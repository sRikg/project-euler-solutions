require('gtools')

input <- 0:9
nth_number <- 1e6

looper_counter <- function(input, nth_number) {
  input_len <- length(input)
  next_nth_number <- nth_number %% factorial(input_len - 1)
  num_to_decrease <- (floor(nth_number / factorial(input_len - 1))+1)
  output <- input[-num_to_decrease]
  return(list(output, next_nth_number, input[num_to_decrease]))
}

input_temp <- input
nth_number_temp <- nth_number
saved <- c()
while(nth_number_temp != 0 & length(input_temp) > 3) {
  looped <- looper_counter(input_temp, nth_number_temp)
  saved <- c(saved, looped[[3]])
  nth_number_temp <- looped[[2]]
  input_temp <- looped[[1]]
}

num_3_input <- input[!input %in% saved]
num_3_picker <- function(input, num) {
  return(permutations(n=length(input),r=3,v=input,repeats.allowed=F)[num,])
}

saved_last <- num_3_picker(num_3_input, looped[[2]])

final <- c(saved, saved_last)
final <- as.character(final)
final <- paste0(final, collapse="")

print(final)