size <- 1001
#size <- 5
vals_max <- size*size

val <- 3
sum <- 1
counter <- 1
addn <- 2
while(val <= vals_max){
  sum <- sum + val
  if(counter == 4){
    counter <- 0
    addn <- ((addn / 2) + 1)*2
  }
  counter <- counter + 1
  val <- val + addn
}
sum
