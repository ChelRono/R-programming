#IN-BUILT FUNCTIONS
#1.Seq()
print(seq(32,44))

#2.Mean()
print(mean(25:82))

#3.Sum()
print(sum(41:68))

#USER-DEFINED FUNCTIONS
#1.Calling a function
new.function <- function(a){
    for (i in 1:a){
        b<- i^2
        print(b)
    }
}
new.function(6)

#2.Calling a function without an argument
new.function <- function (){
    for (i in 1:5){
        print(i^2)
    }
}
new.function()

#3.Calling a function with argument values(by name & by position)
new.function <- function(a,b,c){
    result <- a*b+c
    print (result)
}
#by position
new.function(5,3,11)

#by name
new.function(a=11,b=5,c=3)

#4.Calling a function with default argument
new.function <- function(a=3,b=6){
result <- a*b
print(result)
}
#call function without giving an argument
new.function()

#call function with giving new values
new.function(9,5)

#5.Lazy Evaluation of Function
new.function <- function(a,b){
    print(a^2)
    print(a)
    print(b)
}
new.function(6)


