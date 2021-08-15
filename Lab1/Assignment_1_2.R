#2. WAP in R to find display the sum of n natural numbers using loop.
{
num <- as.integer(readline(prompt = "Enter the value of 'num': "))
sum <- 0

for (x in 1:num) {
  sum <- sum + x
}

print(paste("Sum of ", num," natural numbers is: ", sum))
}