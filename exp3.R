# Experiment 3: Correlation Analysis and Normalization

# Create a sample dataset
data <- data.frame(
  Age = c(20, 22, 24, 26, 28, 30),
  StudyHours = c(2, 3, 4, 5, 6, 7),
  Marks = c(50, 55, 60, 65, 70, 75)
)

# Display the dataset
print(data)

# Correlation analysis
correlation <- cor(data)
print(correlation)

# Min-Max normalization
normalize <- function(x) {
  (x - min(x)) / (max(x) - min(x))
}

normalized_data <- as.data.frame(lapply(data, normalize))

# Display normalized data
print(normalized_data)