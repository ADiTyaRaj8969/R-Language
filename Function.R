print(abs(-5))
print(sqrt(25))
print(sum(2:5))
print(mean(1:10))
print(seq(10:100))
print(range(4,5,5,6,7,8))
print(ceiling(4.9))
print(cos(60))
print(sin(60))
print(log(2))
print(exp(4))

#pro-1
new.fun <- function(a) {
  for(i in 1:a){
    b=i*2
    print(b)
  }
}
new.fun(5)


#pro-2
new.fun2 <- function(a,n,sum) {
  if(a==n){
    print(sum)
  }
  sum=sum+a
  new.fun2(a+1,n,sum)
}
new.fun2(1,5,0)

#pro-3
new.fun3=function(a,b,c){
  print(a)
  print(b)
  print(c)
  print(a*b*c)
}
new.fun3(1,2,3)
new.fun3(c=2,a=1,b=5)

#prog-4
new.function<-function(a,b,c){
  result<- a + b + c
  print(result)
}
new.function(2,3,11)

#prog-5
new.function<-function(x,y,z){
  result<- x+ y+ z
  print(result)
}
new.function(x = 11 ,y = 5 ,z = 10)

#Program -6
new.function<-function(a= 10, b =20){
  result<-a*a*b*b
  print(result)
}
new.function(a=5,b=10)

#prog-7

new.function<-function(a,b){
  print(a^2)
  print(a)
  print(b)
}
new.function(6)

#Post Lab 

#1.

sum <- function(x, y) {
  if (!is.integer(x) | !is.integer(y)) {
    stop("Both arguments must be integers.")
  }
  return(x + y)
}
num1 <- as.integer(readline(prompt = "Enter the first integer: "))
num2 <- as.integer(readline(prompt = "Enter the second integer: "))
result <- sum(num1, num2)
cat("The sum of", num1, "and", num2, "is:", result, "\n")

#2

avg <- function(arr) {
  if (!is.integer(arr)) {
    stop("Argument must be an integer vector.")
  }
  sum_of_elements <- sum(arr)
  length_of_array <- length(arr)
  if (length_of_array == 0) {
    warning("The input array is empty. Average cannot be calculated.")
    return(NA)  
  }
  return(sum_of_elements / length_of_array)
}
array_size <- as.integer(readline(prompt = "Enter the size of the integer array: "))
if (array_size <= 0) {
  stop("Array size must be a positive integer.")
}
integer_array <- integer(array_size)
for (i in 1:array_size) {
  integer_array[i] <- as.integer(readline(paste("Enter element", i, ": ")))
}
average_value <- avg(integer_array)

cat("The average of the entered array is:", average_value, "\n")

#3.

evenodd <- function(number) {
  if (!is.integer(number)) {
    stop("Argument must be an integer.")
  }
  remainder <- number %% 2
  if (remainder == 0) {
    return("Even")
  } else {
    return("Odd")
  }
}
user_number <- as.integer(readline(prompt = "Enter an integer: "))
even_or_odd <- evenodd(user_number)
cat("The number", user_number, "is", even_or_odd, "\n")

#4.

fact <- function(n) {
  if (n == 0 || n == 1) {
    return(1) 
  } else {
    return(n * fact(n - 1))  
  }
}
n <- as.integer(readline(prompt = "Enter an integer: "))
if (n >= 0) {
  result <- fact(n)
  cat("The factorial of", n, "is:", result, "\n")
} else {
  cat("Please enter a non-negative integer.\n")
}

#5

prime <- function(n) {
  if (n <= 1) {
    cat(n, "is not a prime number.\n")
    return()
  }
  
  is_prime <- TRUE
  for (i in 2:(sqrt(n))) {
    if (n %% i == 0) {
      is_prime <- FALSE
      break
    }
  }
  
  if (is_prime) {
    cat(n, "is a prime number.\n")
  } else {
    cat(n, "is not a prime number.\n")
  }
}
n <- as.integer(readline(prompt = "Enter an integer: "))
prime(n)

#6 


generate_square <- function() {
  num <- as.numeric(readline(prompt = "Enter a number: "))
  square <- num^2
  cat("The square of", num, "is:", square, "\n")
}
generate_square()

#7

perform_operation <- function(num1, num2, operator) {
  result <- switch(operator,
  "+" = num1 + num2,
  "-" = num1 - num2,
  "*" = num1 * num2,
  "/" = {
  if (num2 != 0) {
  num1 / num2
  } else {
  "Cannot divide by zero"
 }
 },
 "Invalid operator"
  )
  return(result)
}
calculator <- function() {
  num1 <- as.numeric(readline(prompt = "Enter the first number: "))
  operator <- readline(prompt = "Enter the operator (+, -, *, /): ")
  num2 <- as.numeric(readline(prompt = "Enter the second number: "))
  result <- perform_operation(num1, num2, operator)
  cat("Result:", result, "\n")
}
calculator()

















             