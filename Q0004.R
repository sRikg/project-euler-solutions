# is.palindrome from https://stackoverflow.com/questions/17032168/how-to-check-if-a-word-is-a-palindrome/
is.palindrome <- function (word) {
  identical(word, paste(rev(strsplit(word, "")[[1]]), collapse=""))
}

n <- 999*999

largest_palindrome <- 0
for(i in 100:999) {
  for(j in 100:999) {
    num <- i * j
    str_num <- as.character(num)
    if(is.palindrome(str_num) & num > largest_palindrome)(
      largest_palindrome <- num
    )
  }
}

print(largest_palindrome)