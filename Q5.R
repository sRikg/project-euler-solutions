# lcm from https://www.datamentor.io/r-programming/examples/least-common-multiple/

lcm <- function(x, y) {
      # choose the greater number
      if(x > y) {
            greater = x
      } else {
            greater = y
      }
      while(TRUE) {
            if((greater %% x == 0) && (greater %% y == 0)) {
                  lcm = greater
                  break
            }
            greater = greater + 1
      }
      return(lcm)
}

n <- 10
final_lcm <- 1
for(i in 2:n) {
      final_lcm <- lcm(final_lcm, i)
      print(paste0(as.character(i), " is done"))
}

print(final_lcm) # 2520

n <- 20
final_lcm <- 1
for(i in 2:20) {
      final_lcm <- lcm(final_lcm, i)
      print(paste0(as.character(i), " is done"))
}

print(final_lcm)


# This would take some time(~5 mins)
# I made 2 LCMs, one for 1:15 and another for 16:20 and then took an lcm of both for the answer