collatz_next_term <- function(current){
  if(current %% 2 == 0){
    return(current/2)
  } else {
    return((3*current) + 1)
  }
}

collatz_length <- function(n) {
  counter <- 1
  collatz_term <- n
  while(collatz_term != 4) {
    collatz_term <- collatz_next_term(collatz_term)
    counter <- counter + 1
  }
  return(counter + 2)
}

lengths <- collatz_length(1)
for(i in 4:1e6) {
  lengths <- c(lengths, collatz_length(i))
  if(i %% 1e4 == 0) print(paste0(as.character(i), " is done"))
}
print(which.max(lengths)+2)
# Takes over 12 mins for the run