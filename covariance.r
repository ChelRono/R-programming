input <- mtcars[, c("am", "mpg", "hp")]
print(head(input))

# Get the dataset.
input <- mtcars

#1.ANCOVA Analysis # nolint
# Create the regression model.
result <- aov(mpg~hp*am,data = input)#nolint
print(summary(result))

#Model without interaction between categorical variable and predictor variable
# Get the dataset.
input <- mtcars

# Create the regression model.
result <- aov(mpg~hp+am,data = input)#nolint
print(summary(result))

#2.Comparing two models
# Get the dataset.
input <- mtcars

# Create the regression models.
result1 <- aov(mpg~hp*am,data = input)#nolint
result2 <- aov(mpg~hp+am,data = input)#nolint

# Compare the two models.
print(anova(result1,result2))#nolint