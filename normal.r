#1.DNORM()
#This function gives height of the probability distribution at each point for a given mean and standard deviation. # nolint

# Create a sequence of numbers between -10 and 10 incrementing by 0.1.
x <- seq(-10, 10, by = .1)

# Choose the mean as 2.5 and standard deviation as 0.5.
y <- dnorm(x, mean = 2.5, sd = 0.5)

# Give the chart file a name.
png(file = "dnorm.png")

plot(x, y)

# Save the file.
dev.off()

#2.PNORM()
#This function gives the probability of a normally distributed random number to be less that the value of a given number. It is also called "Cumulative Distribution Function". # nolint

# Create a sequence of numbers between -10 and 10 incrementing by 0.2.
x <- seq(-10, 10, by = .2)
  # nolint
# Choose the mean as 2.5 and standard deviation as 2.  # nolint
y <- pnorm(x, mean = 2.5, sd = 2)

# Give the chart file a name.
png(file = "pnorm.png")

# Plot the graph.
plot(x, y)

# Save the file.
dev.off()

#3.QNORM()
#This function takes the probability value and gives a number whose cumulative value matches the probability value. # nolint

# Create a sequence of probability values incrementing by 0.02.
x <- seq(0, 1, by = 0.02)

# Choose the mean as 2 and standard deviation as 3.
y <- qnorm(x, mean = 2, sd = 1)

# Give the chart file a name.
png(file = "qnorm.png")

# Plot the graph.
plot(x, y)

# Save the file.
dev.off()

#4.RNORM()
#This function is used to generate random numbers whose distribution is normal. It takes the sample size as input and generates that many random numbers. We draw a histogram to show the distribution of the generated numbers. # nolint

# Create a sample of 50 numbers which are normally distributed.
y <- rnorm(50)

# Give the chart file a name.
png(file = "rnorm.png")

# Plot the histogram for this sample.
hist(y, main = "Normal DIstribution")

# Save the file.
dev.off()