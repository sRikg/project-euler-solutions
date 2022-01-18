q6 <- function(n) {
  sum = 0
  for(i in 1:n){
    for (j in 1:n){
        if (i != j){
          sum = sum + i*j
        }
    }
  }
  return(sum)
}

q6(10)
q6(100)