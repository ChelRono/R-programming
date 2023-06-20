#Equal operator
var.1=c(0,1,2,3)

#Leftward operator
var.2 <- c("learn","R")

#Rightward operator
c(TRUE,1) -> var.3

print(var.1)
cat("var.1 is",var.1,"/n")
cat("var.2 is",var.2,"/n")
cat("var.3 is",var.3,"/n")

#Data types of variables
var_x1 <- "Hello"
cat("The data type of var_x is",class(var_x1),"/n")

var_x1 <- 34.5
cat("The data type of var_x is",class(var_x1),"/n")

var_x1 <- 27L
cat("The data type of var_x is",class(var_x1),"/n")

print(ls())
print(ls(pattern = "var")) 
print(ls(all.names=TRUE))  

rm(list = ls())
print(ls())