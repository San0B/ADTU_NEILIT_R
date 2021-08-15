#5. WAP in R to find the sum of n natural numbers with formula.
{
sumOfN <- function(n) {
  return(n*(n+1)/2) 
}

n <- as.integer(readline(prompt = "Enter the n: "))
sum <- sumOfN(n)
print(paste("Sum is = ", sum))
}
