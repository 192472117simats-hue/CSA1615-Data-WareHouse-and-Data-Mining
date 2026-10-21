# Experiment 9: Apriori Algorithm Using R

library(arules)

# Create transaction dataset
transactions <- list(
  c("Milk", "Bread"),
  c("Milk", "Bread", "Butter"),
  c("Milk", "Butter"),
  c("Bread", "Butter"),
  c("Milk", "Bread", "Butter"),
  c("Bread")
)

# Convert into transactions
trans <- as(transactions, "transactions")

# Apply Apriori algorithm
rules <- apriori(
  trans,
  parameter = list(supp = 0.3, conf = 0.6)
)

# Display association rules
inspect(rules)