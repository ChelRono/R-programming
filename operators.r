#ARITHMETIC OPERATORS
#1.Addition
v<- c(2,5.5,6)
t<- c(8,3,4)

print(v+t)

#2.Subtraction
v<- c(2,5.5,6)
t<- c(8,3,4)

print(v-t)

#3.Multiplication
v<- c(2,5.5,6)
t<- c(8,3,4)

print(v*t)

#4.Division
v<- c(2,5.5,6)
t<- c(8,3,4)

print(v/t)

#5. %%
v<- c(2,5.5,6)
t<- c(8,3,4)

print(v%%t)

#6. %/%
v<- c(2,5.5,6)
t<- c(8,3,4)

print(v%/%t)

#7. ^
v<- c(2,5.5,6)
t<- c(8,3,4)

print(v^t)

#RELATIONAL OPERATORS
#1.>
v<- c(2,5.5,6,9)
t<- c(8,2.5,14,9)

print(v>t)

#2.<
v<- c(2,5.5,6,9)
t<- c(8,2.5,14,9)

print(v<t)

#3. ==
v<- c(2,5.5,6,9)
t<- c(8,2.5,14,9)

print(v==t)

#4. <=
v<- c(2,5.5,6,9)
t<- c(8,2.5,14,9)

print(v<=t)

#5. >=
v<- c(2,5.5,6,9)
t<- c(8,2.5,14,9)

print(v>=t)

#6. !=
v<- c(2,5.5,6,9)
t<- c(8,2.5,14,9)

print(v!=t)

#LOGICAL OPERATORS
#1. &-AND
v<- c(3,1,TRUE,2+3i)
t<- c(4,1,FALSE,2+3i)

print(v&t)

#2. |-OR
v<- c(3,0,TRUE,2+2i)
t<- c(4,0,FALSE,2+3i)

print(v|t)

#3. !-NOT
v<- c(3,0,TRUE,2+2i)

print(!v)

#4. &&-AND
v<- c(3,0,TRUE,2+2i)
t<- c(1,3,TRUE,2+3i)

print(v&&t)

#5. ||-OR
v<- c(0,0,TRUE,2+2i)
t<- c(0,3,TRUE,2+3i)

print(v||t)

#ASSIGNMENT OPERATORS
#1.Left assignment( <- ,<<- ,=)
v1<- c(3,1,TRUE,2+3i)
v2<<- c(3,1,TRUE,2+3i)
v3= c(3,1,TRUE,2+3i)

print(v1)
print(v2)
print(v3)

#2.Right assignment(-> ,->>)
 c(3,1,TRUE,2+3i) ->v1
 c(3,1,TRUE,2+3i) ->>v2

 print(v1)
 print(v2)

#MISCELLANEOUS OPERATORS
#1.Colon operator(:)
v<-2:8

print(v)

#2. %in%
v1<- 8
v2<- 12
t<- 1:10

print(v1 %in% t)
print(v2 %in% t)

#3. %*%
M=matrix(c(2,6,5,1,10,4),nrow=2,ncol=3,byrow=TRUE)
t=M %*%t(M)

print(t)

