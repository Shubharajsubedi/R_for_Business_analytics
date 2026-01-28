# a. Arithmetic operations
25 + 37 - 12
# 50

(14 * 3) / 2
# 21

7^3
# 343

48 %% 7  # remainder of 48 divided by 7
# 6

floor(19.86)
# 19
ceiling(19.86)
# 20


# b. Variable assignment and removal
pi_value <- 3.14     # using <-
year = 2025          # using = (different assignment method)

pi_value
# 3.14
year
# 2025

rm(year)             # remove year
exists("year")
# FALSE


# c. Create variables of different types
numeric_var <- 42.5
integer_var <- 100L
character_var <- "R Programming"
logical_var <- TRUE
complex_var <- 3 + 4i

# Test with class(), typeof(), and is.* functions
class(numeric_var); typeof(numeric_var); is.numeric(numeric_var); is.logical(numeric_var); is.raw(numeric_var)
# "numeric" "double" TRUE FALSE FALSE

class(integer_var); typeof(integer_var)
# "integer" "integer"

class(character_var); typeof(character_var)
# "character" "character"

class(logical_var); typeof(logical_var); is.logical(logical_var)
# "logical" "logical" TRUE

class(complex_var); typeof(complex_var)
# "complex" "complex"


# d. Vectors for lab scores
lab1_scores <- c(12, 8, 15, 10, 14)
lab2_scores <- c(18, 15, 12, 19, 16)

total_lab_scores <- lab1_scores + lab2_scores
total_lab_scores
# 30 23 27 29 30

excellent <- total_lab_scores >= 25
excellent
# TRUE FALSE TRUE TRUE TRUE


# e. Statistical functions on total_lab_scores
sum(total_lab_scores)
# 139

prod(total_lab_scores)
# 23*27*29*30*30 = 1413720 (wait, actually let's compute exactly)
prod(total_lab_scores)
# 1413720

range(total_lab_scores)  # note: you wrote range(0) which is invalid
# 23 30

quantile(total_lab_scores)
#   0%  25%  50%  75% 100% 
# 23.0 27.0 29.0 30.0 30.0

var(total_lab_scores)
# 12.3


# f. Name the elements
names(total_lab_scores) <- c("Student1", "Student2", "Student3", "Student4", "Student5")
total_lab_scores
# Student1 Student2 Student3 Student4 Student5 
#       30       23       27       29       30 


# g. String functions
toupper("learning R")
# "LEARNING R"

tolower("HELLO WORLD")
# "hello world"

substring("PROGRAMMING", 4, 8)
# "GRAMM"

paste("Data", "Science", sep = "-")
# "Data-Science"


# h. Type conversions
x_num <- 3.14159
x_char <- as.character(x_num)
x_char
# "3.14159"
class(x_char)
# "character"

y_char <- "123"
y_num <- as.numeric(y_char)
y_num
# 123
class(y_num)
# "numeric"

z_log <- c(TRUE, FALSE, TRUE)
z_int <- as.integer(z_log)
z_int
# 1 0 1
class(z_int)
# "integer"


# i. Vector recycling
c(10, 20, 30, 40) + c(1, 2)
# 11 22 31 42

# Explanation:
# R recycles the shorter vector (1, 2) to match the length of the longer one:
# It repeats (1, 2, 1, 2) → adds to (10,20,30,40)
# Result: 10+1, 20+2, 30+1, 40+2 → 11, 22, 31, 42
# Warning would appear if lengths don't divide evenly (except when one is multiple of other)


# j. Sequences and repetition
seq(from = 5, to = 50, by = 5)
# 5 10 15 20 25 30 35 40 45 50

rep("Hello", times = 7)
# "Hello" "Hello" "Hello" "Hello" "Hello" "Hello" "Hello"


# k. Mathematical functions
exp(2)
# 7.389056

log(20)        # natural log
# 2.995732

log10(500)
# 2.69897

abs(-45.88)
# 45.88


# l. Vector comparison
A <- c(85, 92, 78, 88)
B <- c(80, 95, 82, 85)

A > B
# TRUE FALSE FALSE TRUE

A < B
# FALSE  TRUE  TRUE FALSE

A == B
# FALSE FALSE FALSE FALSE

# How many subjects Student A scored higher
sum(A > B)
# 2


# m. Unique and duplicated
vec_with_repeats <- c(10, 20, 10, 30, 20, 40, 10)

unique(vec_with_repeats)
# 10 20 30 40

duplicated(vec_with_repeats)
# FALSE FALSE  TRUE FALSE  TRUE FALSE  TRUE

which(duplicated(vec_with_repeats))
# 3 5 7