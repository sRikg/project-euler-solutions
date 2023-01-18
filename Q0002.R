# Fibonacci function code from https://stackoverflow.com/questions/48566319/fibonacci-sequence-in-r
# Define a function "fib" that takes in two arguments, "x" and "y"
fib <- function(x, y) {
  # Create a variable "s" that is the sum of x and y
  s <- x + y
  # Recursively call the "fib" function with "y" and "s" as arguments, and return the result
  c(s, if (s < 4000000) fib(y, s))
}

# Assign the result of calling the "fib" function with 0 and 1 as arguments to a variable "f"
f <- fib(0, 1)

# Use the sum function to sum up all the even elements of "f" and assign the result to a variable "result"
result <- sum(f[f %% 2 == 0])

# Print the result
print(result)
