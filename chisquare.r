library("MASS")
print(str(Cars93))

# Create a data frame from the main data set.
car.data <- data.frame(Cars93$AirBags, Cars93$Type)#nolint

# Create a table with the needed variables.
car.data = table(Cars93$AirBags, Cars93$Type) #nolint
print(car.data)

# Perform the Chi-Square test.
print(chisq.test(car.data))