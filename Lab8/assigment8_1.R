# 1. Import any dataset of your choice and apply active learning to get the best training-testing
# split or best classification model.
#Using iris dataset
print(summary(iris))

x <- subset(iris, select = -c(Species))
y <- subset(iris, select = c(Species))
#Initially, 10% train and 90% test (unlabel) is taken.
set.seed(9)   
sample <- sample.int(n = nrow(iris), size = floor(0.1*nrow(iris)), replace = F)
train_x <- x[sample, ]
train_y <- y[sample, ]
test_x  <- x[-sample, ]
test_y <- y[-sample, ]

ac <- 0
split_len = floor(0.5*nrow(iris))
#The loop will continue until 90% accuracy or until 50-50 train-test split is achieved.

while(ac < 0.9 && nrow(train_x) != split_len){
  classifier_cl <- naiveBayes(train_x, train_y)
  y_pred <- predict(classifier_cl, test_x)
  cm <- as.matrix(table(test_y, y_pred))
  correct <- diag(cm)
  ac <- sum(correct)/sum(cm)
  
  y_prob <- predict(classifier_cl, test_x, type="raw")
  difference <- Inf
  idx <- 0
  
  for(i in 1:nrow(y_prob)){
    selected <- y_prob[i,]
    for(j in 1:(length(selected)-1)){
      for(k in (j+1):length(selected)){
        diff <- abs(selected[j]-selected[k])
        if(diff < difference){
          difference <- diff
          idx <- i
        }
      }
    }
  }
  item_x <- test_x[idx,]
  item_y <- test_y[idx]
  
  train_x <- rbind(train_x, item_x)
  train_y <- c(train_y, item_y)
  
  test_x <- test_x[-idx,]
  test_y <- test_y[-idx]
}

print(nrow(train_x))
print(ac)
