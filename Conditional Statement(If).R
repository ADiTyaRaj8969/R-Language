#Experiment-4 
#IF statement

#Program-1
x<-3L
if(is.integer(x)){
  print("X is an integer ")
}

#Program-2
x=as.integer(readline("Enter an Value"))
if(x>0){
  print("The number is positive")
}
print("Outdside If Statement")


#Program-3
{
y = as.integer(readline("Enter Your Age"))
if(y>18){
  print("You Can Vote")
}
if(y<18){
  print("You Can't Vote")
}
}

#If Else
#Program -4
{
  x<-c("what","is","truth")
  if("Truth" %in% x){
    print("Truth is Found")
  }else{
    print("Truth is Not Found")
  }
}

#Program-5
{
  age<-as.integer(readline("Enter Your Age:"))
  if(age>18){
    print("You are elligible to Vote:")
  }else{
    print("You can not Vote:")
  }
}
#Program-6
{
  num<-as.integer(readline("Enter a number:"))
  if(num<100){
    print("Greater Than Hundred")
  }else{
    print("Less Than Hundred")
  }
}
#If else if Condition
#Program-7
{
  x=as.integer(readline("enter the value of x"))
  if(x>0){
    print("Positive ")
  }else if(x<0){
    print("negative")
  }else{
    print("x is zero")
  }
  
}
#Program-8
{
  x=as.integer(readline("enter the value of x"))
  y=as.integer(readline("enter the value of y"))
  if(x>y){
    print("x is greater ")
  }else if(x<y){
    print("y is greater")
  }else{
    print("both are same")
  }
  
}
#Program-9
{
  age<-as.integer(readline("Enter Your Age"))
  if(age<19){
    print("You are an Teenager")
  }else if(age==19){
    print("You are on the verge of Adulthood")
  }else{
    print("You are an Adult")
  }
}

