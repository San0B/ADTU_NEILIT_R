# 2. Continue the same with minimum support of 20% and the minimum confidence of 50%

library(arules)
library(arulesViz)

data(Groceries)

rules <- apriori(Groceries, parameter = list(support = 0.01, confidence = 0.5)) # No output with 20% support, hence set to 1%

rules <- sort(rules, decreasing = TRUE, by = "confidence")
inspect(rules[1:10])

itemFrequencyPlot(Groceries, topN = 20,
                  type = 'absolute',
                  main = 'Frequency Plot',
                  xlab = 'Grocery Items',
                  ylab = 'Item Frequency')