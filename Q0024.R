input <- 0:2

swap_array <- function(array, position_1, position_2) {
  temp <- array[position_1]
  array[position_1] <- array[position_2]
  array[position_2] <- temp
  return(array)
}

one_increment_array <- function(curr_array) {
  sort_array <- sort(curr_array)
  max_idx <- which.max(curr_array)
  temp <- curr_array[max_idx-1] + 1
  to_swap <- which(curr_array == temp)
  sort_array[max_idx-1] <- temp
  sort_array[to_swap] <- sort_array[to_swap]-1
  return(sort_array)
}

function(input, order_num) {
  next_array <- input
  while(order_num > 0){
    next_arr <- next_array(next_arr, )
    order_num <- order_num - 1
  }
  return(next_arr)
}