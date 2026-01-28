# =========================================================
# R PRACTICE QUESTIONS - COMPLETE SOLUTIONS
# =========================================================

# -----------------------------
# 1) Basics - Daily Steps Tracker
# -----------------------------
# 1. Create vector with 7 days of steps
dailySteps <- c(8200, 10500, 7800, 9200, 11000, 6500, 8800)

# 2. Total steps in the week
total_steps <- sum(dailySteps)
total_steps 

# 3. Average steps per day
avg_steps <- mean(dailySteps)
avg_steps

# 4. Assign day names
names(dailySteps) <- c("Monday", "Tuesday", "Wednesday", 
                       "Thursday", "Friday", "Saturday", "Sunday")
dailySteps  # now shows with day names

# 5. Sort steps in increasing order
sort(dailySteps)

# 6. Round average to nearest whole number
rounded_avg <- round(avg_steps)
rounded_avg

# 7. Use paste() to create a nice message
paste("You took an average of", rounded_avg, "steps per day this week!")


# -----------------------------
# 2) Variable Practice with a Twist
# -----------------------------
# 1. Create months vector (days in each month, non-leap year)
months <- c(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)
months

# 2. Remove the variable and check existence
rm(months)
exists("months")  # Should return FALSE


# -----------------------------
# 3) Data Type Practice
# -----------------------------
decimal_num   <- 25.75
logical_val   <- (5 > 3)          # or TRUE/FALSE directly
text_string   <- "Hello APU Students!"
whole_num     <- as.integer(100)

# Check class of each
class(decimal_num)   # "numeric"
class(logical_val)   # "logical"
class(text_string)   # "character"
class(whole_num)     # "integer"


# -----------------------------
# 4) Vectors and Calculations (Quiz + Exam)
# -----------------------------
quizMarks  <- c(16, 18, 12, 20, 15)   
examMarks  <- c(68, 72, 55, 78, 70) 

# 3. Total marks for each student
totalMarks <- quizMarks + examMarks
totalMarks

# 4. Percentage (out of 100)
percentage <- (totalMarks / 100) * 100
percentage


# -----------------------------
# 5) Logical Values and Grading
# -----------------------------
# 1. Create totalMarks with 10 values between 0 and 100

totalMarks <- c(5,10,20,30,40,50,60,70,80,90)
totalMarks

# Apply summary functions
min(totalMarks)
max(totalMarks)
mean(totalMarks)
median(totalMarks)
sd(totalMarks)   # standard deviation

# 2. Give names to the 10 students
names(totalMarks) <- c("Aisha", "Ben", "Chloe", "David", "Emma",
                       "Fahad", "Grace", "Hassan", "Ivy", "Jack")
totalMarks  

# Bonus: Create grade categories (optional but useful)
grade <- ifelse(totalMarks >= 80, "A",
                ifelse(totalMarks >= 70, "B",
                       ifelse(totalMarks >= 60, "C",
                              ifelse(totalMarks >= 50, "D", "F"))))
grade

# Show final named vector with grades
data.frame(Student = names(totalMarks), 
           Marks = totalMarks, 
           Grade = grade)