#2. Data whose distribution is close to lognormal are common. Size measurements of biological
#organisms often have this character. As an example, consider the measurements of
#body weight (body),in the data frame Animals (MASS). Begin by drawing a histogram of
#the untransformed values,and overlaying a density curve. Then
#(a) Draw an estimated density curve for the logarithms of the values.

library(MASS)
plot(density(Animals$body))
logbody <- log(Animals$body)
plot(density(logbody))


#(b) Determine the mean and standard deviation of log(Animals$body). Overlay the estimated
#density with the theoretical density for a normal distribution with the mean
#and standard deviation just obtained.

av <- mean(logbody) #average of logbody cloumn
sdev <- sd(logbody)#standard deviation of logbody
xval <- pretty(c(av - 3 * sdev, av + 3 * sdev), 50)
lines(xval, dnorm(xval, mean = av, sd = sdev))

#comparision is being done here between estimated density curve for the logarithms of the values vs
#theoretical density for a normal distribution with the mean
#and standard deviation