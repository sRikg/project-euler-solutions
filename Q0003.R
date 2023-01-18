# is.prime from https://stackoverflow.com/questions/19767408/prime-number-function-in-r
# Define a function "is.prime" that takes in a single argument, "n"
is.prime <- function(n) n == 2L || all(n %% 2L:max(2, floor(sqrt(n))) != 0)

# Assign the value 600851475143 to a variable "n"
n <- 600851475143

# Assign the square root of "n" to a variable "sqrt_n"
sqrt_n <- sqrt(n)

# Initialize a variable "largest_divisor" to 0
largest_divisor <- 0

# Iterate through all integers from 2 to the square root of "n"
for(i in 2:sqrt(n)) {
  # Check if "i" is a divisor of "n" and if it is prime
  if(n %% i == 0 && is.prime(i)){
    # If so, update "largest_divisor" to be the current value of "i"
    largest_divisor <- i
  }
}

# Print the value of "largest_divisor"
print(largest_divisor)
