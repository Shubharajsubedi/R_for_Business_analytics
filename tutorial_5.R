##1. Check data type of x where x is a vector containing values between 40 to 100.
x <- 40:100
class(x)          # Output: "integer"


##2. Check if x is integer; if not, convert to integer.
Rx <- 40:100
is.integer(x)     # Output: TRUE (already integer)

# Example with a non-integer vector
x <- c(40.5, 50.2, 60.0)
is.integer(x)     # Output: FALSE
x <- as.integer(x)
is.integer(x)     # Output: TRUE

##3. Find the mean of rows and columns of x.

x <- matrix(1:20, nrow = 5, byrow = TRUE)
rowMeans(x)       # Mean of each row
colMeans(x)       # Mean of each column


##4. Split the string “hello world” as hell, w, rld.
strsplit("Hello World","o")


##5. Count the number of characters in “hello”.
nchar("hello")    # Output: 5

##6. Extract the word “good” from “Today is a good day”.
substr("Today is a good day.",12,15)    # Output: "good"

##7. Find the cube root of 7.
y<-7^(1/3)           


##8. Create a 9×9 matrix by row and find elements greater than 2 from the matrix.
mat <- matrix(1:81, nrow = 9, byrow = TRUE)
mat[mat > 2]      # Returns all elements > 2


##9. Count the number of elements greater than 5 from the above matrix.
sum(mat > 5)      # Output: 66 (since 1 to 81 has 66 numbers > 5)

##10. Print the odd elements from the matrix.
mat[mat %% 2 == 1]   # Output: all odd numbers from 1 to 81

##11. Create a vector containing the numbers 2, 5, 7, 9, 12.
vec <- c(2, 5, 7, 9, 12)
vec


##12. Extract the first 3 elements of above vector.
vec[1:3]          # Output: 2 5 7

##13. Extract all except the 2nd element.
vec[-2]           # Output: 2 7 9 12

##14. Enter any 7 marks between 50 to 100 as marks and give a name to each element in the marks.
marks <- c(85, 92, 78, 65, 88, 95, 71)
names(marks) <- c("Alice", "Bob", "Charlie", "David", "Eve", "Frank", "Grace")
marks


##15. Create a list that contains a numeric vector, a character vector, and a logical value.
my_list <- list(
  numeric_vec = c(1.5, 2.3, 4.7),
  char_vec    = c("apple", "banana", "cherry"),
  logical_val = TRUE
)
my_list


##16. Given x <- c(3, 5, 7, 9) and y <- c(2, 4, 6, 8), compute x + y, x * y, and the mean of x.
x <- c(3, 5, 7, 9)
y <- c(2, 4, 6, 8)

x + y          # Output: 5 9 13 17
x * y          # Output: 6 20 42 72
mean(x)        # Output: 6



###17. Find the matrix multiplication of any two 4×4 matrices.
mat1 <- matrix(1:16, nrow = 4, byrow = TRUE)
mat2 <- matrix(17:32, nrow = 4, byrow = TRUE)

mat1 %*% mat2   # Matrix multiplication (4×4 result)



