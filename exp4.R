# Experiment 4: Regression Analysis Using R

# Create sample dataset
diabetes <- data.frame(
  Age = c(25, 30, 35, 40, 45, 50, 55, 60),
  BloodPressure = c(70, 72, 75, 78, 80, 82, 85, 88),
  Glucose = c(90, 100, 110, 120, 130, 140, 150, 160)
)

# Display dataset
print(diabetes)

# Linear Regression
relation <- lm(BloodPressure ~ Age, data = diabetes)
print(relation)

# Plot Linear Regression
plot(diabetes$Age, diabetes$BloodPressure,
     col = "green",
     main = "Linear Regression Analysis",
     xlab = "Age",
     ylab = "Blood Pressure")

abline(relation, col = "red")

# Predict Blood Pressure
A <- data.frame(Age = diabetes$Age)
result <- predict(relation, A)
print(result)

# Multiple Regression
model <- lm(Age ~ BloodPressure + Glucose, data = diabetes)
print(model)