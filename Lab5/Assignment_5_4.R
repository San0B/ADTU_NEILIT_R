#4. (a) Import the Iris dataset (https://archive.ics.uci.edu/ml/datasets/iris).

iris

#(b) As you may know, this dataset contains three kinds of flowers: Iris-Setosa, Iris-
 # Versicolor, and Iris-Virginica, having the following four features: sepal length, sepal
#width, petal length, petal width. choose only two features: petal length, petal width,
#and plot the data points in a 2-D space where the x-axis and the y-axis represent the
#petal length and the petal width, respectively.

library(dplyr)
plot(iris[c("Petal.Length", "Petal.Width")])


#(c) Compute the similarity measure between Iris-Setosa and Iris-Versicolor; and Iris-
 # Versicolor and Iris-Virginica; and Iris-Setosa and Iris-Virginica considering only two
#features petal length and petal width

a <- iris[, "Petal.Length"]
b <- iris[, "Petal.Width"]

#various types of similarity measurs are
dist(rbind(a, b), method = "manhattan")
dist(rbind(a, b), method = "euclidian")
dist(rbind(a, b), method = "minkowski")
m <- cbind(a,b)
cosine(m)


jaccard <- function(a, b) {
  intersection = length(intersect(a, b))
  union = length(a) + length(b) - intersection
  return (intersection/union)
}

jaccard(a,b)
