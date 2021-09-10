# Create a sample of 100 samples which are incremented by 1.5#
x <- seq(0,100,by = 1.5)

# Create the binomial distribution.
y <- dbinom(x,100,0.5)


# Give the chart file a name.
png(file = "dbinom.png")

# Plot the graph for this sample.
plot(x,y)

# Save the file.
dev.off()
