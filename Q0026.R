num_digits <- function(n) {
	 return(length(unlist(strsplit(as.character(n), split=""))))
}

prob_26 <- function(n){
	skips <- sort(c(1, 2^c(1:9), 5^c(1:4), 2^c(1:7) * 5, 2^c(1:5) * 25, 2^c(1:3) * 125))
	if(n %in% skips) {
		return(0)
	} else {

		i <- q <- 1
		n_num_digits <- num_digits(n)
		reminders <- c()
		while(i <= n) {

			while ((q %% n) == q){
				q <- q * 10
			}

			q <- q %% n
			if (q %in% reminders){
				return(length(reminders))
				break
			}
			reminders <- c(reminders, q %% n)
			i <- i + 1

		}
		return(length(reminders))
	}
}

which.max(sapply(2:1000, prob_26)) + 1