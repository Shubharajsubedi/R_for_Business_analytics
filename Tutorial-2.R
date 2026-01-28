# =====================================================
# Tutorial 2 - Basics of R
# =====================================================

# 1) Basic math commands
5 + 17
10 - 7
4 * 3 * 5
18 / 9
9 %% 4          # remainder (modulo)
(5 * 8) + (12 - 7)


# 2) Defining / assigning / removing variables
# i.
weeks <- 4

# ii.
hoursPerWeek = 40

# iii. using assign()
assign("hourlyRate", 50)

# iv. create x and then remove it
x <- 100        # or x = 100 or assign("x",100)
rm(x)           # removes x


# 3) Different data types and checking them
num_var <- 25.5          # numeric (double)
int_var <- 20L           # integer (note the L)
char_var <- "APU"        # character
log_var <- TRUE          # logical

class(num_var);    is.numeric(num_var);    is.integer(num_var)
class(int_var);    is.numeric(int_var);    is.integer(int_var)
class(char_var);   is.character(char_var)
class(log_var);    is.logical(log_var)


# 4) Vectors for test and final marks
test_Marks  <- c(22, 18, 27, 15, 30)      # out of 30
final_Marks <- c(55, 62, 48, 70, 60)      # out of 70

total_Marks <- test_Marks + final_Marks
print(total_Marks)


# 5) Logical vector: pass if total >= 50
pass <- total_Marks >= 50
print(pass)


# 6) Summary statistics of total_Marks
min(total_Marks)
max(total_Marks)
mean(total_Marks)
median(total_Marks)


# =====================================================
# Take-home exercises
# =====================================================

# 1) Give names to total_Marks
names(total_Marks) <- c("Ali", "Bala", "Chong", "Devi", "Erika")
total_Marks   # now displays with student names


# 2) Try these functions
round(547.8)
length(total_Marks)
sqrt(9)
substr("abcd", 2, 4)
strsplit("hello world", " ")
paste("welcome to", "PFDA")
nchar("hello")


# 3) Round of 345.67
round(345.67)          # default rounds to 0 decimal places
round(345.67, digits = 1)   # to 1 decimal place


# 4) Extract "gram" from "Programming"
substr("Programming", 6, 9)      # positions 6 to 9 are "gram"


# 5) Cube root of 29791, then add 9
value <- 29791
cube_root <- value^(1/3)
Final_marks <- cube_root + 9
Final_marks


# 6) Square root of 11 + square root of 13, then round the sum
sum_sqrts <- sqrt(11) + sqrt(13)
round(sum_sqrts)


# 7) Marks of five subjects for student A and student B
subject_marks_A <- c(78, 85, 92, 76, 88)
subject_marks_B <- c(82, 79, 90, 85, 91)

sum_A <- sum(subject_marks_A)
sum_B <- sum(subject_marks_B)

cat("Total marks A:", sum_A, "\n")
cat("Total marks B:", sum_B, "\n")
cat("Is A greater than B?", sum_A > sum_B, "\n")

# Minimum and maximum among ALL marks (both students)
all_marks <- c(subject_marks_A, subject_marks_B)
min(all_marks)
max(all_marks)

# If you want min/max for each student separately:
min_A <- min(subject_marks_A); max_A <- max(subject_marks_A)
min_B <- min(subject_marks_B); max_B <- max(subject_marks_B)

cat("Student A - Min:", min_A, " Max:", max_A, "\n")
cat("Student B - Min:", min_B, " Max:", max_B, "\n")




