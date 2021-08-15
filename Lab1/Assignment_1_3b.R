#3b.WAP in R to find display the sum of n natural numbers using Functions.
{
sumOfN <- function(n) {
  sum <- 0
  
  for (x in 1:n) {
    sum <- sum + x
  }
  
  print(paste("Sum of ", n," natural numbers is: ", sum))
}

n <- as.integer(readline(prompt = "Enter the value of 'n': "))
sumOfN(n)
}