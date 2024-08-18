#R- Operator
#Arithmetic Operator
v<-c(2,5,5,6)
t<-c(8,3,4)
print(v+t)
print(v-t)
print(v*t)
print(v/t)
print(v%%t)
print(v%/%t)
print(v^t)

#Relational Operator
v<-c(2,5,5,6,9)
t<-c(8,2,5,14,9)
print(v>t)
print(v<t)
print(v==t)
print(v<=t)
print(v>=t)
print(v!=t)

#Logical Operator
v<-c(3,1,TRUE,2+3i)
t<-c(4,1,FALSE,2+3i)
print(v&t)
print(v|t)
print(!v)
v= 101
t=121
print(v&&t)
print(v||t)

#Assignment Operator
v1<-c(3,1,TRUE,2+3i)
v2<<-c(3,1,TRUE,2+3i)
v3=c(3,1,TRUE,2+3i)
print(v1)
print(v2)
print(v3)
c(3,1,TRUE,2+3i)->v1#right 
c(3,1,TRUE)

#Miscellaneous Operator
v<-2:8
print(v)
v1 <-8
v2 <-12
t< 1:10
print(v1 %in% t)
print(v2 %in% t)
M= matrix(c(2,6,5,1,10,4), nrow=2,ncol=3,byrow = TRUE)
t = M %*% t(M)
print(M)
print(t(M))
print(t)


