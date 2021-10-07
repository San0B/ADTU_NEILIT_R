# 1. Import any database of transactions of your choice (Groceries dataset may be preferred. It is predefined in R package)
# (a) Load required R libraries : arules and arulesViz
library(arules)
library(arulesViz)

data(Groceries)
print(Groceries)
# (b) Apply apriori algorithm and mine the frequent itemsets and association rules. Use
# the default values of minimum support and minimum confidence.
rules <- apriori(Groceries, parameter = list(supp = 0.01, conf = 0.2))

# (c) Displays the first 10 strong association rules.
rules <- sort(rules, decreasing = TRUE, by = "confidence")
inspect(rules[1:10])

# (d) Plot the 20 items with highest item frequency.
itemFrequencyPlot(Groceries, topN = 20,
                  type = 'absolute',
                  main = 'Frequency Plot',
                  xlab = 'Grocery Items',
                  ylab = 'Item Frequency')
