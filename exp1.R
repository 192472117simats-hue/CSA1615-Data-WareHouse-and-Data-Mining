data <- c(10, 20, 30, 40, 50, 20, 30, 30, 60, 70)

# Central Tendency
mean(data)
median(data)

# Mode
mode_value <- as.numeric(names(which.max(table(data))))
print(mode_value)

# Summary
summary(data)

# Measures of Dispersion
IQR(data)
quantile(data)
range(data)

# Midrange
midrange <- (min(data) + max(data)) / 2
print(midrange)

# Outlier Detection
Q1 <- quantile(data, 0.25)
Q3 <- quantile(data, 0.75)
IQR_value <- IQR(data)

LF <- Q1 - 1.5 * IQR_value
UF <- Q3 + 1.5 * IQR_value

print(LF)
print(UF)

outliers <- data[data < LF | data > UF]
print(outliers)