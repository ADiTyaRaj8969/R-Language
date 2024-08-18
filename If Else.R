#If Else
#Program -1
{
  x<-c("what","is","truth")
  if("Truth" %in% x){
    print("Truth is Found")
  }else{
    print("Truth is Not Found")
  }
}

#Program-2
{
  age<-as.integer(readline("Enter Your Age:"))
  if(age>18){
    print("You are elligible to Vote:")
  }else{
    print("You can not Vote:")
  }
}
#Program-3
{
  num<-as.integer(readline("Enter a number:"))
  if(num<0){
    print("Negative Number")
  }else{
    print("Positive Number")
  }
}
