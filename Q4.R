# is.palindrome modified from https://stackoverflow.com/questions/17032168/how-to-check-if-a-word-is-a-palindrome/
is.palindrome <- function (word) {
  identical(word, paste(rev(strsplit(word, "")[[1]]), collapse=""))
}

