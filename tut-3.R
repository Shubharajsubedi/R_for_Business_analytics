#1. Convert 0&gt;Low, 1&gt;Medium, 2&gt;High in data &lt;-c(1,2,2,0,1,2,0,1,2).
m <- c(1,2,2,0,1,2,1,2)
fact<-c("low","medium","high")
namesfact<- c(fact[m+1])
namesfact


#2. Write an R program to create a matrix taking a given vector of numbers as input. Then, display
#the matrix.
vec <- c(1,2,3,4,5,6,7,8,9,10)
ma <- matrix(vec, nrow=2 ,ncol=3)
ma

#3. Write an R program to create a matrix taking a given vector of numbers as input. Then, give
#names for its columns and rows. Finally, display the matrix.
vec <- c(1,2,3,4,5,6,7,8,9,10)
ma <- matrix(vec, nrow=2 ,ncol=3)
colnames(ma)<-c("a1","a2","a3")
rownames(ma)<-c("s1","s2")
ma

#4. Write an R program to create two 2x3 matrices then add, subtract, multiply and divide the matrices.
mac <- matrix(1:6,nrow = 2,ncol = 3,byrow=TRUE)
mai <- matrix(6:12,nrow = 2,ncol = 3)
mai
mac
mac+mai
mac-mai
mac*mai
mac/mai


##5
mib<- matrix(1:16, ncol = 4, nrow=4)
mib
mib[2,3]
mib[3,]
mib[,4]


##6
mi<- matrix(1:12,4,4)
mi
me <- mi[2,3]*mi[1,2]
me

# -------------------------------------------------------------------------


##7
mr <- matrix(1:12,4,4)
mrs<- matrix(12:24,4,4)
mr
mrs
result <- rbind(mr,mrs)
result

##8

m8<- matrix(1:12,4,3)
mt<-matrix(1:12,4,4)
result <- cbind(m8,mt)
result

##9
mt<-matrix(1:12,4,4)
min(mt)
max(mt)

##10
mat <- matrix(c(1,2,4,5,6,1,5,8,9,10,12),nrow = 4,ncol = 4)

max_value <- max(mat)
max_position <- which(mat == max_value, arr.ind = TRUE)
max_position

min_value <- min(mat)
min_position <- which(mat == min_value, arr.ind = TRUE)
min_position

##11
m1<-matrix(1:9,3,3)
m2<-matrix(9:27,3,3)
a<-array(c(m1,m2),dim = c(3,3,2))
a

##12
m1<-matrix(1:9,3,3)
m2<-matrix(9:27,3,3)
a<-array(c(m1,m2),dim = c(3,3,2))
a
a[2,,2]
a[2,,1:2]

##13
vo<-c(2,3,4,45,5,66,7,8,2,232,22,23,24,44,55,23,43,32,65,876,98,76,45,12)
v <- array(c(vo),dim = c(3,3,3))
v

##14
a<-c(11,22,35,40)
b<-c("shubharaj","subhash","saroj","bimal")
d<- c(40,50,60,70)
e<-c("male","female","trans","straight")
af<- data.frame(a,b,d,e)
af
af$d
#15
df <- data.frame(
  name = c("shubharaj","saroj","subash"),
  age = c(22,20,21),
  address = c("baneshwor","koteshwor","tinkune"),
  phone = c(9494848484984,384784594595,48484848949)
)
df
##16

#df[1:2,]



##Q17

df$salary<-c(12000,20000,30000)
df


##18. Write an R program to add new row(s) to an existing data frame.
newROw <- c("shreya",21,"koteshwor",4857657577484,40000)
df <-rbind(df,newROw)
df

#19. Write an R program to drop column(s) by name from a given data frame.
df$name<-NULL
df

##20. Write an R program to create a list containing a character, a number, two vectors, a data frame,
##and a list.
l2 <- list(1,2,3,4,"apple")
l1 <- list(
  charac = "abc",
  numb = 234,
  na <- c("Shubharaj","subedi"),
  su <-c(1,2,3,4),
  li <- data.frame(
    name = c("shubharaj","saroj","subash"),
    age = c(22,20,21),
    address = c("baneshwor","koteshwor","tinkune"),
    phone = c(9494848484984,384784594595,48484848949)
    
  ),
  l2
)
l1



#21. Write an R program to create a list containing a vector, a matrix and a list and give names to the
#elements in the list. Access the first and second element of the list.
l1[[6]][[5]]
l1[[3]][[1]]




##to create the matrix
m2<- matrix(1:30,6,5,byrow = TRUE,dimnames = list(rownames=c("r1","r2","r3","r4","r5","r6"),colnames=c("c1","c2","c3","c4","c5")))
m2






