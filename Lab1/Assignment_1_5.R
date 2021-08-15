#6. Design a simple calculator in R.
{
ADD <- function() {
  x <- as.integer(readline(prompt = "Enter first number: "))
  y <- as.integer(readline(prompt = "Enter second number: "))
  return(x + y)
}

SUBTRACT <- function() {
  x <- as.integer(readline(prompt = "Enter first number: "))
  y <- as.integer(readline(prompt = "Enter second number: "))
  return(x - y)
}


MULTIPLY <- function() {
  x <- as.integer(readline(prompt = "Enter first number: "))
  y <- as.integer(readline(prompt = "Enter second number: "))
  return(x * y)
}


DIVIDE <- function() {
  x <- as.integer(readline(prompt = "Enter first number: "))
  y <- as.integer(readline(prompt = "Enter second number: "))
  return(x / y)
}


while(TRUE) {
  print("##### SIMPLE CALCULATOR #####")
  print("Enter 1 for addition")
  print("Enter 2 for subtraction")
  print("Enter 3 for multiplication")
  print("Enter 4 for division")
  print("Enter 5 to exit")
  input <- readline()
  result <- switch (input,
                    "1" = ADD(),
                    "2" = SUBTRACT(),
                    "3" = MULTIPLY(),
                    "4" = DIVIDE(),
                    "5" = stop("Thank you!")
  )
  print(paste("result is : ", result))
  print("===========================================")
}
}