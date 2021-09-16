#(a) Define a normalized vector P.

p <- c(1:5)
print(p)

#(b) Define a normalized vector Q.
q <- c(21:25)
print(q)


#(c) Combine P and Q as matrix object. Please note that when defining a matrix from
#vectors, the vectors should be combined as rows.

m <- matrix(c(p,q), nrow = 5)
print(m)

m <- rbind(p,q)
print(m)

#(d) Compute the Euclidean Distance with default parameters

dist(rbind(p, q), method = "euclidean")