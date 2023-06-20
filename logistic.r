# Select some columns form mtcars.
input <- mtcars[, c("am", "cyl", "hp", "wt")]

print(head(input))

#1.Create regression model
input <- mtcars[, c("am", "cyl", "hp", "wt")]

am.data = glm(formula = am ~ cyl + hp + wt, data = input, family = binomial) # nolint

print(summary(am.data))