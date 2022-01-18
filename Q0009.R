is.pythagorean <- function(vec) identical(sort(vec)[3]^2, sort(vec)[1]^2 + sort(vec)[2]^2)

for(a in 997:1){
  bc_sum <- 1000 - a
  for(b in 1:bc_sum){
    c <- bc_sum - b
    if(identical(a+b+c, 1000) && is.pythagorean(c(a,b,c))){
      if(min(c(a,b,c) != 0)){
        print(prod(c(a,b,c)))
      }
    }
  }
}
