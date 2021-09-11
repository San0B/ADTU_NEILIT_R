#1.(a) In R a simple bar graph can be used to model the probability distribution function.
#Take a random vector and probability associated with it and plot it with a bar graph.
 
# Create the data for the chart
sample_point <- c(1, 2, 3, 4, 5, 6, 2, 3, 6, 1, 4)
probability <- c(20, 30, 10, 60, 50, 15, 18, 43, 58, 34, 24)

# Plot the bar chart 
barplot(probability, names.arg = sample_point, xlab ="Sample_Point", 
        ylab ="Probability", col ="green", 
        main ="Bar Graph for Probability Distribution")

#(b) For the above problem create a cumulative frequency table and plot the cumulative
#frequency against each sample point mentioned in the vector.

# A general frequency table
table(sample_point)

# Relative frequency table
table(sample_point)/length(sample_point)


# To get cumulative frequencies, we need to put
# the hours into different intervals
x = table(cut(sample_point, breaks = c(1:6)))

# Cumulative frequencies
cumulative_frq = cumsum(x)
print(cumulative_frq)

plot(sample_plot, cumulative_frq,            # plot the data 
       +   main="Old Faithful Eruptions",  # main title 
       +   xlab="Duration minutes",        # x???axis label 
       +   ylab="Cumulative eruptions")   # y???axis label 
lines(sample_point, cumulative_frq)           # join the points


#(c) Using some simple commands in R generate the probability values for the binomial
#distribution for the number of children in 10 with blue eyes using p=0.16. Plot the
#obtained result.

dbinom(3, size = 13, prob = 1 / 6)
probs <- dbinom(x = c(0:10), size = 10, prob = 1 / 6)
data.frame(x, probs)
plot(0:10, probs, type = "l")

#(d) Run the above example with probabilities that a child has blue eyes is 0.05, 0.2, 0.5,
#and 0.8 and see how this changes the distribution.






#(e) Consider you have a vector 0:10. Compute poisson distribution with p=0.2. Plot it
#to visulaise the distribution.

y <- c(0:10)
print(y)
dpois(y, 0.2)
#x = ppois(y, 0.2)
plot(dpois(x=0:10,lambda=0.2))
#plot(x)
#help(dpois)
