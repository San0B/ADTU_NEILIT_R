install.packages("igraph")
install.packages('expm')
library(expm)
library(igraph)
g <-sample_gnm(4,m= 12, directed = TRUE,loops = 3)
g
plot(g)
#using eigen vector
adj_m <- t(as_adjacency_matrix(g, sparse = FALSE))
adj_m_mod <- prop.table(adj_m, 2)
lr <- eigen(adj_m_mod)$vectors[ , 1]
lr <- Re(lr/sum(lr))
matrix(lr, ncol = 1)

#using teleporting factor 0.8
df <- data.frame(pr = page_rank(g, damping = 0.8)$vector)
df
