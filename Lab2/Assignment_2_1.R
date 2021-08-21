setwd("E:/IIIT(G)/M.Tech 3rd SEMESTER/Data Analytics/Lab")
dataset <- read.csv("Dataset.csv")
#print(dataset)

# Missing data handling
dataset$Age <- ifelse(is.na(dataset$Age), ave(dataset$Age, FUN = function(x) median(x, na.rm = TRUE)), dataset$Age)
dataset$Age <- as.numeric(format(round(dataset$Age, 0)))
dataset$Salary <- ifelse(is.na(dataset$Salary), ave(dataset$Salary, FUN = function(x) mean(x, na.rm = TRUE)), dataset$Salary)
#print(dataset)

#Encoding categorical data : Country
dataset$Country <- factor(dataset$Country, levels = c('France','Spain','Germany'), labels = c(1,2,3))
#print(dataset)

#Encoding catgorical data : Purchased
dataset$Purchased <- factor(dataset$Purchased, levels = c('Yes', 'No'), labels = c(0,1))
#print(dataset)

#Scale the data
dataset[,2:3] <- scale(dataset[,2:3])
print(dataset)
