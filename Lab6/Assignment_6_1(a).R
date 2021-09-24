data("iris")
# print(head(iris))

# (a) Visualise the data
plot(x = iris$Species, y = iris$Petal.Length, main = "Species vs Petal Length", col = "yellow", xlab = "Species", ylab = "Petal length")
plot(x = iris$Species, y = iris$Petal.Width, main = "Species vs Petal Width", col = "yellow", xlab = "Species", ylab = "Petal width")

plot(x = iris$Species, y = iris$Sepal.Length, main = "Species vs Sepal Length", col = "lightblue", xlab = "Species", ylab = "Sepal length")
plot(x = iris$Species, y = iris$Sepal.Width, main = "Species vs Sepal Width", col = "lightblue", xlab = "Species", ylab = "Sepal width")