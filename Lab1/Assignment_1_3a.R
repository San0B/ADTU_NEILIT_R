#3a. WAP in R to find the highest of three numbers using functions.
{
  highestOfThree <- function (a, b, c) {
    if (a >= b && a >= c) {
      print(paste(a,"is the greatest"))
      
    } else if (b >= a && b >= c) {
      print(paste(b,"is the greatest"))
    } else {
      print(paste(c,"is the greatest"))
    }
    
  }
  
  a <- as.integer(readline(prompt = "Enter the first number: "))
  b <- as.integer(readline(prompt = "Enter the second number: "))
  c <- as.integer(readline(prompt = "Enter the third number: "))
  highestOfThree(a, b, c)
}