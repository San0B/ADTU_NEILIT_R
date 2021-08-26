
#(a)Reading the Dataset
setwd("E:/IIIT(G)/M.Tech 3rd SEMESTER/Data Analytics/Lab")
dataset <- read.csv("iris.csv")

#(b) Find the mean of all the metrics (Sepal.Length Sepal.Width Petal.Length Petal.Width)
data(iris)
mean(iris[["Petal.Length"]]) #compute the mean of a variable in a data frame, given the name of the column. There are two typical approaches to doing this, one indexing with [[ and the other indexing with [:
mean(iris[,"Petal.Length"])
mean(iris[["Sepal.Width"]])
mean(iris[,"Sepal.Width"])

#(c) Compute the sum of all the metrics across species and group by species.
# aggregate() function in R to create the sum of all the metrics across species and group by species
agg_sum = aggregate(iris[,1:4],by=list(iris$Species),FUN=sum, na.rm=TRUE)
agg_sum

#(d) Compute the count of all the metrics across species and group by species.
# Aggregate function in R with count
agg_count = aggregate(iris[,1:4],by=list(iris$Species),FUN=length)
agg_count

#(e) Compute the maximum of all the metrics across species and group by species.
# Aggregate function in R with maximum
agg_max = aggregate(iris[,1:4],by=list(iris$Species),FUN=max, na.rm=TRUE)
agg_max
