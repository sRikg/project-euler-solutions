a <- -999:999
b <- 2:1000

is.prime <- function(n) n == 2L || all(n %% 2L:max(2, floor(sqrt(n))) != 0)

b <- unique(sapply(b, is.prime)*(b))[-3]

len_checker <- function(a_val, b_val){
	n <- 0
	is_prime <- TRUE
	while(is_prime){
		val <- (n * n) + (n * a_val) + b_val
		if(val < 2){
			is_prime <- FALSE
		} else {
			is_prime <- is.prime(val)
		}
		n <- n + 1
	}
	return(n-1)
}

values_df <- as.data.frame(t(as.matrix(ncol=3, rep(NA,3))))
colnames(values_df) <- c("a", "b", "max_primes_len")
## The following nester loop takes time. Depending on the RAM availability, it takes over 20-30 mins.
for(i in a){
	for(j in b){
		max_lens <- len_checker(i, j)
		row_num <- nrow(values_df)
		values_df[row_num + 1, ] <- c(i, j, max_lens)
	}
	print(paste(as.character(i), "are done in", as.character(a)))
}
values_df <- values_df[-1,]

max_row <- which.max(values_df[,3])
values_df[max_row,1] * values_df[max_row,2]
