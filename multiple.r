input <- mtcars[, c("mpg", "disp", "hp", "wt")]
print(head(input))

#1.Create Relationship Model & get the Coefficients
input <- mtcars[, c("mpg", "disp", "hp", "wt")]

# Create the relationship model.
model <- lm(mpg ~ disp + hp + wt, data = input)

# Show the model.
print(model)

# Get the Intercept and coefficients as vector elements.
cat("# # # # The Coefficient Values # # # ", "\n")

a <- coef(model)[1]
print(a)

Xdisp <- coef(model)[2] # nolint
Xhp <- coef(model)[3]# nolint
Xwt <- coef(model)[4]# nolint

print(Xdisp)
print(Xhp)
print(Xwt)
