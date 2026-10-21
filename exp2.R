# Experiment 2: Plotting Graphs Using R

# Dataset
travel.times <- data.frame(
  DayOfWeek = c("Monday", "Tuesday", "Wednesday",
                "Thursday", "Friday", "Monday",
                "Friday", "Tuesday", "Wednesday", "Friday"),
  AvgSpeed = c(40, 45, 50, 35, 60, 42, 55, 48, 52, 65),
  Distance = c(10, 15, 20, 12, 25, 11, 22, 18, 21, 30)
)

# Boxplot
boxplot(AvgSpeed ~ DayOfWeek,
        data = travel.times,
        main = "Boxplot of Average Speed",
        xlab = "Day of Week",
        ylab = "Average Speed",
        col = "lightblue")

# Histogram
hist(travel.times$AvgSpeed,
     main = "Histogram of Average Speed",
     xlab = "Average Speed",
     col = "lightgreen")

# Scatterplot
plot(travel.times$Distance,
     travel.times$AvgSpeed,
     main = "Scatterplot of Distance vs Average Speed",
     xlab = "Distance",
     ylab = "Average Speed",
     pch = 19,
     col = "blue")