# Install necessary packages
install.packages("arules")
# Load the necessary libraries
library(arules)
# Load your data
# For this example, we'll use the built-in Groceries dataset from the arules package
data("Groceries")
# View a summary of the dataset
summary(Groceries)
# Plot item frequency for the top 20 items
itemFrequencyPlot(Groceries, topN = 20, type = "absolute", main = "Item Frequency - Top 20
Items")
# Apply the Apriori algorithm to find frequent itemsets
# Here, we set the minimum support to 0.01 and the minimum confidence to 0.2
frequent_itemsets <- apriori(Groceries, parameter = list(supp = 0.01, target = "frequent
itemsets"))
# View the frequent itemsets
inspect(frequent_itemsets)
# Generate association rules from the frequent itemsets
rules <- apriori(Groceries, parameter = list(supp = 0.01, conf = 0.2))
# View the generated rules
x
inspect(rules)
# Sort rules by lift
rules_sorted <- sort(rules, by = "lift")
# Inspect the top 10 rules
inspect(rules_sorted[1:10])
# Plot the top 10 rules
plot(rules_sorted[1:10], method = "graph", control = list(type = "items"))
# Additional visualizations
# Plot the frequency of all items
itemFrequencyPlot(Groceries, type = "absolute", main = "Item Frequency")
# Plot the top 10 rules using different methods
plot(rules_sorted[1:10], method = "grouped", control = list(k = 10), main = "Top 10 Rules -
Grouped")
plot(rules_sorted[1:10], method = "matrix", control = list(reorder = TRUE), main = "Top 10
Rules - Matrix")
plot(rules_sorted[1:10], method 
