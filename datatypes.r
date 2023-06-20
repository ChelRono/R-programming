#CLASSES OF VECTORS
#1.Logical
v <- TRUE
print(class(v))

#2.Numeric
v<- 23.5
print(class(v))

#3.Integer
v<- 2L
print(class(v))

#4.Complex
v<- 2+5i
print(class(v))

#5.Character
v<- "TRUE"
print(class(v))

#6.Raw
v<- charToRaw("Hello")
print(class(v))

#1.VECTORS
apple<- c('green','yellow','red')
print(apple)
print(class(apple))

#2.LISTS
list1 <- list(c(2,5,3),21.3,sin)
print(list1)

#3.MATRICES
M=matrix(c('a','a','b','c','b','a'),nrow=2,ncol=3,byrow=TRUE)
print(M)

#4.ARRAYS
a<- array(c('green','yellow'),dim=c(3,3,2))
print(a)

#5.FACTORS
#Create a vector
apple_colors <- c('green','green','yellow','red','red','red','green')

#Create a factor object
factor_apple <- factor(apple_colors)

#Print the factor
print(factor_apple)
print(nlevels(factor_apple))

#6.DATA FRAMES
BMI <- data.frame(
    gender=c("Male","Male","Female"),
    height=c(152,171.5,165),
    weight=c(81,93,78),
    age=c(42,38,26)
)
print(BMI)

print(ls())