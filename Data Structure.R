# Data Structures
# Vector

# Program - 1

numbers<-c(1,2,3,4,5,6,7)
print(numbers)

#Program-2 to Access the first element of vector

numbers<-c(1,2,3,4,5,6,7)
print((numbers)[1])

#prog-3 Access the last element of vector
numbers<-c(1,2,3,4,5,6,7)
print(numbers[length(numbers)])

#program-4

numbers<-c(1,2,3,4,5,6,7)
print(numbers[length(numbers)] + numbers[1])

#program-5

numbers<-c(1,2,3,4,5,6,7)
print(numbers[1] * numbers[4])

#List

#Program -1

data_list<-list("Red",1,True)
print(data_list)

#Program-2

data_list<-list("Red",1,True)
print(data_list[[1]])

#Program-3

data_list<-list("Red",1,True)
data_list[[4]]<-"new data"
print(data_list)

#Program-4

movie<-list(name= "Toy Story" ,year = 1995 )
print(movie)

#program-5

movie<-list(name= "Toy Story" ,1995,c("Hello,Hi,Bye") )
movie[1:3]

#Data Frames 
#Program-1

data_frame<-data.frame(name=c("name 1","name 2","name 3"),age=c(25,30,32),education=c(TRUE,FALSE,TRUE))
print(data_frame)
print(data_frame$name)

#Program-2

movies<-data.frame(names = c("Toy Story","Iron Man"),year = c(1995,2000))
print(movies)
print(movies$year)

#Program -3
movies<-data.frame(names = c("Toy Story","Iron Man"),year = c(1995,2000))
movies<-movies[-2,]
print(movies)

#Matrices
#Program-1

matrix<-matrix(c(1,2,3,4,5,6),nrow=2)
print(matrix)

#Program - 2

matrix<-matrix(c(1,2,3,4,5,6),nrow=2,byrow = TRUE)
print(matrix)

#Program -3
matrix<-matrix(c(1,2,3,4,5,6),nrow=2,byrow = TRUE)
print(matrix)
print(matrix[,1])
print(matrix[1,])

#Program - 4
matrix<-matrix(c(1,2,3,4,5,6),nrow=2,byrow = TRUE)
print(matrix[1:2])

#Program-5
matrix<-matrix(c(1,2,3,4,5,6),ncol=2,byrow = TRUE)
print(matrix)

#Factors

#Program -1 
data<-c("red","blue","green","red","black","blue")
factor_data<-factor(data)
print(factor_data)
print(levels(factor_data))

#Program-2


shirt_size <- c("Small", "Medium", "Large", "Extra Large")
size_factor <- factor(shirt_size, ordered = TRUE)
print(size_factor)

#Program -3

clothing_sizes <- c("Small", "Medium", "Large", "Medium", "Extra Large")
size_factor <- factor(clothing_sizes)
print(levels(size_factor))
print(is.ordered(size_factor))
size_counts <- table(size_factor)
print(size_counts)
ordered_sizes <- factor(clothing_sizes, levels = c("Small", "Medium", "Large", "Extra Large"), ordered = TRUE)
print(is.ordered(ordered_sizes))

#Post Lab

#Q1.
my_list <- list(a = 1, b = 2, c = 3)
my_list$d <- 4
print(my_list)
#Q2
random_list <- list(random_values = runif(5))
print(random_list)

#Q3
v=c(5,10,15,20,25) 
print(sum(v))  
print(mean(v))  
print(prod(v)) 

#Q4
last_value <- function(vec) {
  return(vec[length(vec)])
}
my_vector <- c(1, 2, 3, 4, 5)
print(last_value(my_vector))

#q5


my_matrix <- matrix(1:9, nrow = 3, byrow = TRUE)  # Example matrix, 3x3
print("Matrix:")
print(my_matrix)
my_vector <- c(1, 2, 3) 
print("Vector:")
print(my_vector)
result <- my_matrix %*% my_vector
print("Result:")
print(result)


#Q6

elementwise_matrix_mult <- function(mat1, mat2) 
mat1 <- matrix(1:4, nrow = 2)
mat2 <- matrix(5:8, nrow = 2)
result <- elementwise_matrix_mult(mat1, mat2)
print("Element-wise Matrix Multiplication Result:")
print(result)


#Q7

vec1 <- c(1, 2, 3)
vec2 <- c("a", "b", "c")
vec3 <- c(TRUE, FALSE, TRUE)
vec4 <- c(1.1, 2.2, 3.3)
my_dataframe <- data.frame(vec1, vec2, vec3, vec4)
print(my_dataframe)

#Q8
my_vector <- c("a", "b", "c", "a", "b", "c")
factor_levels <- levels(factor(my_vector))
print(factor_levels)











