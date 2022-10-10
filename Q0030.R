N <- 5

max_val <- (9^N)*10

vals <- c()

for(i in 10:(max_val)){ # As i cannot be a single digit obiviously
	str_i <- as.character(i)
	split_i <- as.integer(unlist(strsplit(str_i, "")))
	sum <- sum(split_i^N)
	if(sum == i) {vals <- c(vals, i)}
	if(i %% 10000) {print(paste0(as.character(i), " done"))}
}

sum(vals)
