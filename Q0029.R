n <- 100
temp_vec <- c()
for(i in 2:n){
  for(j in 2:n){
    temp_vec <- c(temp_vec, as.integer(i) ^ as.integer(j))
  }
}

length(unique(temp_vec))
