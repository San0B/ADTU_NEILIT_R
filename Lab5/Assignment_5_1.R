#1. Perform the following tasks::
  #(a) Import mtcars dataset.
mtcars

#(b) Visualize your data using scatter plots
install.packages("dplyr")
library(dplyr)

mtcars_df <- tbl_df(mtcars)
mtcars_df

library(ggplot2)
ggplot(mtcars_df, aes(x=wt, y=mpg)) + 
  geom_point()


#(c) Compute the Correlation between mpg and wt variables.

wt_variables = mtcars$wt    
miles_per_gallon = mtcars$mpg      
cor(wt_variables, miles_per_gallon)          # apply the cor function 

