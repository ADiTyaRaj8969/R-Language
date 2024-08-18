#loops
#Repeat
#Program-1
{
  v=c("Hello","World")
  cnt=2
  repeat{
    print(v)
    cnt=cnt+1
    if(cnt>5){
      break
    }
  }
}
#Program-2
{
  v=c("Hello World")
  cnt=1
  repeat{
    print(v)
    cnt=cnt+2
    if(cnt>7){
      break
    }
  }
}
#Program-3
{
  i=1
  x=as.integer(readline("enter the value of x"))
  repeat{
    print(i)
    i=i+1
    if(i==x){
      print(i)
      break
    }
  }
}
#while loop
#Program-1
{
  v=c("Hello","World")
  cnt=2
  while(cnt<7){
    print(v)
    cnt=cnt+1
  }
  
}
#Program-2
{
  v=c("Hello")
  i=1
  while (i<6) {
    print(v)
    i=i+1
    
  }
}
#Program-3
{
  i=1
  sum=0
  x=as.integer(readline("enter the value of x"))
  while(i<=x){
    sum=sum+i
    i=i+1
    
  }
  print(sum)
  
}
#For Loop
#Program-1
for(i in c(-8,9,11,45))
{
  print(i)
}
#Program-2
v=LETTERS[1:3]
for(i in v){
  print(v)
}
#Program-3
{
  x = as.integer(readline("enter the value of x:-"))
  v = integer(1:x)
  for (i in 1:x) {
    print(v[i]) 
  }
}

#Break
#Program-1
v=c(1,2,3,4,5)
cnt=6
repeat{
  print(v)
  cnt=cnt+1
  if(cnt>7){
    break
  }
}
#Program-2
x=1:5
for (val in x) {
  if(val==3){
    break
  }
  print(val)
  
}
#next statement
#Program-1
v=LETTERS[1:6]
for(i in v){
  if(i=="D"){
    next
  }
  print(i)
}
#Program-2
x=1:5
for(val in x){
  if(val==3){
    next
  }
  print(val)
}



