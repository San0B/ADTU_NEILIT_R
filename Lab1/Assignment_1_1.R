#WAP in R to find the highest of three numbers.
{
    a <- as.integer(readline(prompt = "Enter the first number :"))
    b <- as.integer(readline(prompt = "Enter the second number :"))
    c <- as.integer(readline(prompt = "Enter the third number :"))

    if (a > b && a > b) {
      print(paste("The Greatest Number is :", a))
    } else if (b > c) {
      print(paste("The Greatest Number is :", b))
    } else{
      print(paste("The Greatest Number is :", c))
    }

}
