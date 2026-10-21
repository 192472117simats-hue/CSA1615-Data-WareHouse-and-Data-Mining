# Experiment 6: K-means Clustering Using R

# Create dataset
data <- data.frame(
  Age = c(18, 19, 20, 21, 30, 31, 32, 33),
  Marks = c(45, 50, 55, 60, 80, 85, 90, 95)
)

# Apply K-means clustering
set.seed(123)
result <- kmeans(data, centers = 2)

# Display results
print(result)

# Plot clusters
plot(data$Age, data$Marks,
     col = result$cluster,
     pch = 19,
     main = "K-means Clustering",
     xlab = "Age",
     ylab = "Marks")

# Display cluster centers
points(result$centers,
       col = 1:2,
       pch = 8,
       cex = 2)