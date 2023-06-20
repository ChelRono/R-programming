#REPEAT LOOP
v<- c("Hello","loop")
cnt<- 2
repeat{
    print(v)
    cnt<- cnt +1
    if(cnt>5){
        break
    }
}

#WHILE LOOP
v<- c("Hello","While loop")
cnt<-2
while(cnt<7){
    print(v)
    cnt=cnt+1
}

#FOR LOOP
v<- LETTERS[1:4]
for (i in v) {
   print(i)
}

#LOOP CONTROL STATEMENTS
#1.BREAK
v<- c("Hello","loop")
cnt<- 2
repeat{
    print(v)
    cnt<- cnt +1
    if(cnt>5){
        break
    }
}

#2.NEXT
v<- LETTERS[1:6]
for (i in v){
    if(i=="D"){
        next
    }
    print(i)
}
