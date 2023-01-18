# Create an array that contains all integers from 1 to 999
array <- 1:999

# Define a function called "eliminator_3_5" that takes in a single argument, "n"
eliminator_3_5 <- function(n){
  # Check if the input "n" is divisible by 3
  if(n %% 3 == 0){
    # If so, return the value of "n"
    return(n)
  } else {
    # If "n" is not divisible by 3, check if it is divisible by 5
    if (n %% 5 == 0){
      # If so, return the value of "n"
      return(n)
    } else {
      # If "n" is not divisible by 3 or 5, return "0"
      return(0)
    }
  }
}

# Use the sapply function to apply the eliminator_3_5 function to every element of the "array"
array_eliminated <- sapply(array, eliminator_3_5)

# Calculate the sum of all the elements of the "array_eliminated" array
result <- sum(array_eliminated)

# Print the result
print(result)
