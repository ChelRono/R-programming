#1.Create Relationship Model & get the Coefficients
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

# Apply the lm() function.
relation <- lm(y ~ x)

print(relation)

#2.Gwt the summary of the relationship
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

# Apply the lm() function.
relation <- lm(y ~ x)

print(summary(relation))

#3.Predict the weight of new persons
# The predictor vector.
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)

# The resposne vector.
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

# Apply the lm() function.
relation <- lm(y ~ x)

# Find weight of a person with height 170.
a <- data.frame(x = 170)
result <-  predict(relation, a)
print(result)

#4.Visualize the Regression Graphically
# Create the predictor and response variable.
x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)
relation <- lm(y ~ x)

# Give the chart file a name.
png(file = "linearregression.png")

# Plot the chart.
plot(y, x, col = "blue", main = "Height & Weight Regression",
abline(lm(x ~ y)), cex = 1.3, pch = 16, xlab = "Weight in Kg", ylab = "Height in cm") # nolint

# Save the file.
dev.off()
