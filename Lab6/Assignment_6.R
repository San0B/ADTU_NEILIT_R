data("iris")
# print(head(iris))

# (a) Visualise the data
plot(x = iris$Species, y = iris$Petal.Length, main = "Species vs Petal Length", col = "yellow", xlab = "Species", ylab = "Petal length")
plot(x = iris$Species, y = iris$Petal.Width, main = "Species vs Petal Width", col = "yellow", xlab = "Species", ylab = "Petal width")

plot(x = iris$Species, y = iris$Sepal.Length, main = "Species vs Sepal Length", col = "lightblue", xlab = "Species", ylab = "Sepal length")
plot(x = iris$Species, y = iris$Sepal.Width, main = "Species vs Sepal Width", col = "lightblue", xlab = "Species", ylab = "Sepal width")

plot(iris$Petal.Length, iris$Petal.Width, col=iris$Species, main="iris dataset visualization", pch = 20, xlab = "Petal Length", ylab = "Petal Width")

# (b) Perform K-Means Clustering selecting the best value of k and taking Euclidean distance
# as similarity measure. Check your algorithm with the following three conditions
# , visualize the clusters and note the difference
# i. Maximum number of iterations
# ii. Cluster centroid remains unchanged
# iii. Highest quality of cluster is reached.

KmeansFunc <- function(data, K, distFunc, iterations) {
  set.seed(123)
  centroids <- data[sample(nrow(data),3),]
  # print(centroids)
  
  max_iterations <- iterations
  centroid_updation <- TRUE
  clusters<-vector("list", nrow(data))
  
  while (max_iterations>0 && centroid_updation){
    for (row in 1:nrow(data)){
      x <- data[row,]
      min_distance <- Inf
      for(centroid in 1:K){
        selected_centroid <- centroids[centroid,]
        distance<-dist(rbind(x,selected_centroid), distFunc)
        
        if(distance < min_distance){
          clusters[row] <- centroid
          min_distance <- distance
        }
      }
    }
    
    old_centroids <- centroids
    
    # Centroid Updation
    for(row_centroid in 1:K){
      for(col_centroid in 1:ncol(data)){
        sum <- 0.0
        count <- 0.0
        average <- NULL
        for(row in 1:nrow(data)){
          if(row_centroid == clusters[row]){
            sum <- sum + data[row, col_centroid]
            count <- count+1
            if(count > 0){
              average <- sum/count
            }
          }
        }
        centroids[row_centroid, col_centroid] <- average
      }
    }
    
    centroid_updation <- !(all(old_centroids==centroids))
    max_iterations <- max_iterations-1
  }
  
  new_data <- iris
  new_data$Cluster <- as.factor(as.numeric(clusters))
  
  plot(new_data$Petal.Length,
       new_data$Petal.Width,
       col = new_data$Cluster,
       main = paste("K-means | k = ",K, "| Distance Fn = ", distFunc),
       sub = paste("No. of iterations = ", iterations),
       pch = 20,
       xlab = "Petal Length",
       ylab = "Petal Width")
}



iris$Species <- NULL


# Run K means algorithm
K<-3
KmeansFunc(data, K, "euclidean", 10)
KmeansFunc(data, K, "euclidean", 200)

# (c) Repeat the Q.2 taking Manhattan distance as similarity measure and note the difference
# between the clusters as compared to that found in Q. 2.
KmeansFunc(data, K, "manhattan", 10)
KmeansFunc(data, K, "manhattan", 200)