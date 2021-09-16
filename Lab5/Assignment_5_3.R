#3. Compute Manhattan distance and cosine similarity after performing (a),(b),(c) steps of
#Q.2.

p <- c(1:5)
q <- c(21:25)

#to manhattan distance between two vectors
dist(rbind(p, q), method = "manhattan")


install.packages("lsa")

#to find cosine similarity between the vectors
library(lsa)
cosine(p,q)

#cosine similarity between the matrix
m <- cbind(p,q)
cosine(m)

m <- rbind(p,q)
cosine(m)