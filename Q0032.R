txt <- "123456789x="
txt <- unlist(strsplit(txt, split=""))

permus <- permutations(n = 11, r = 11, v = txt)

permus_df <- as.data.frame(permus)
permus_df <- permus_df[!permus_df[,1] %in% c("x","="),]
permus_df <- permus_df[!permus_df[,2] %in% c("="),]
permus_df <- permus_df[!permus_df[,3] %in% c("="),]
permus_df <- permus_df[!permus_df[,(ncol(permus_df)-2)] %in% c("x"),]
permus_df <- permus_df[!permus_df[,(ncol(permus_df)-1)] %in% c("x"),]
permus_df <- permus_df[!permus_df[,ncol(permus_df)] %in% c("x","="),]

invalidityChecker <- function(vec){
	is_invalid <- 0
	temp_str_vec <- paste0(vec,collapse="")
	if(length(grep(temp_str_vec, pattern="=x|x=|=[0-9]+x")) > 0){is_invalid <- 1}
	return(is_invalid)
}

inval_checker <- sapply(1:nrow(permus_df), function(i) invalidityChecker(permus_df[i,]))

permus_df1 <- permus_df[inval_checker == 0, ]

permus2_list <- lapply(
	1:nrow(permus_df1), 
	function(i) unlist(strsplit(paste0(permus_df1[i,],collapse=""),split="x|="))
)
permus_df2 <- do.call(rbind, permus2_list)

permus_df3 <- as.data.frame(permus_df2)
permus_df3[,1] <- as.integer(permus_df3[,1])
permus_df3[,2] <- as.integer(permus_df3[,2])
permus_df3[,3] <- as.integer(permus_df3[,3])

permus3_vec <- (((permus_df3[,1]* permus_df3[,2])-permus_df3[,3]) == 0)

permus_df4 <- permus_df3[which(permus3_vec),]
unique(permus_df4[,3])

sum(unique(permus_df4[,3]))
