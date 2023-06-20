#1.MEAN
# Create a vector.
x <- c(12, 7, 3, 4.2, 18, 2, 54, -21, 8, -5)

# Find Mean.
result.mean <- mean(x) # nolint: object_name_linter.
print(result.mean)

#Applying Trim Option
# Create a vector.
x <- c(12,7,3,4.2,18,2,54,-21,8,-5) # nolint

# Find Mean.
result.mean <-  mean(x,trim = 0.3) # nolint
print(result.mean)

#Applying NA Option
# Create a vector. # nolint
x <- c(12,7,3,4.2,18,2,54,-21,8,-5,NA)# nolint

# Find mean.
result.mean <-  mean(x)# nolint
print(result.mean)

# Find mean dropping NA values.
result.mean <-  mean(x,na.rm = TRUE)# nolint
print(result.mean)

#2.MEDIAN
# Create the vector.
x <- c(12,7,3,4.2,18,2,54,-21,8,-5)# nolint

# Find the median.
median.result <- median(x)# nolint
print(median.result)

#3.MODE
# Create the function.
getmode <- function(v) {
   uniqv <- unique(v)
   uniqv[which.max(tabulate(match(v, uniqv)))]
}

# Create the vector with numbers.
v <- c(2,1,2,3,1,2,3,4,1,5,5,3,2,3)# nolint

# Calculate the mode using the user function.
result <- getmode(v)
print(result)

# Create the vector with characters.
charv <- c("o","it","the","it","it")# nolint

# Calculate the mode using the user function.
result <- getmode(charv)
print(result)