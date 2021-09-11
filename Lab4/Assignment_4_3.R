#3. Take a random sample from the normal distribution, and plot the estimated density function.

y <- rnorm(100)
plot(density(y), type="l")

#Now take repeated samples of size 4, calculate the mean for each such sample, and plot the density.

 av <- numeric(100) # will take 100 means
 for (i in 1:100)
 + av[i] <- mean(rnorm(4))
 + 
 lines(density(av), col="green")

#Repeat the above: taking samples of size 9
 
 av <- numeric(100) # will take 100 means
 for (i in 1:100)
   + av[i] <- mean(rnorm(9))
   + 
 lines(density(av), col="red")

#Repeat the above: taking samples of size 25.
 
 av <- numeric(100) # will take 100 means
 for (i in 1:100)
   + av[i] <- mean(rnorm(25))
   + 
 lines(density(av), col="blue")
 