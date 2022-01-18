array <- 1:999

eliminator_3_5 <- function(n){
  if(n %% 3 == 0){
    return(n)
  } else {
    if (n %% 5 == 0){
      return(n)
    } else {
      return(0)
    }
  }
}

array_eliminated <- sapply(array, eliminator_3_5)
print(sum(array_eliminated))