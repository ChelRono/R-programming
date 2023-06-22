# Get and print current working directory.
print(getwd())

# Set current working directory.
setwd("/web/com")

# Get and print current working directory.
print(getwd())

#1.Reading a csv file
data <- read.csv("input.csv")
print(data)

#2.Analyzing a csv file
data <- read.csv("input.csv")

print(is.data.frame(data))
print(ncol(data))
print(nrow(data))

#3.Get the maximum salary
# Create a data frame.
data <- read.csv("input.csv")

# Get the max salary from data frame.
sal <- max(data$salary)
print(sal)

#4.Get the details of person with max salary
# Create a data frame.
data <- read.csv("input.csv")

# Get the max salary from data frame.
sal <- max(data$salary)

# Get the person detail having max salary.
retval <- subset(data, salary == max(salary))
print(retval)

#5.Get everyone working in IT dept
#Create data frame
data <- read.csv("input.csv")

#Get everyone in IT
retval <- subset(data, dept == "IT")
print(retval)

#6.Get the persons in IT department whose salary is greater than 600
#Create data frame
data <- read.csv("input.csv")

#Get everyone in IT with salary greater than 600
retval <- subset(data, dept == "IT" & salary > 600)
print(retval)

#7.Get the people who joined on or after 2014
#Create data frame
data <- read.csv("input.csv")

#Get those who joined on are after 2014
retval <- subset(data, as.Date(start_date  ) > as.Date("2014-01-01") )#nolint

print(retval)

#8.Writing into a csv file
# Create a data frame.
data <- read.csv("input.csv")
retval <- subset(data, as.Date(start_date) > as.Date("2014-01-01"))

# Write filtered data into a new file.
write.csv(retval, "output.csv")
newdata <- read.csv("output.csv")
print(newdata)

#Example 2
# Create a data frame.
data <- read.csv("input.csv")
retval <- subset(data, as.Date(start_date) > as.Date("2014-01-01"))

# Write filtered data into a new file.
write.csv(retval, "output.csv", row.names = FALSE)
newdata <- read.csv("output.csv")
print(newdata)
#