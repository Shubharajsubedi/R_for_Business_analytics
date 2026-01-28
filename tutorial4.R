m1<-matrix(1:9,3,3)
m2

m2<-matrix(1:6,2,3)
m2

m3<-matrix(1:20,4 ,byrow = 5)
m3

m4<-matrix(1:6,nrow=2,byrow = TRUE)
colnames(m4)<-c("A","B","C")
rownames(m4)<-c("Row1","Row2")
m4

m5<-matrix(1:9,3,3)
colnames(m5)<-c("C1","C2","C3")
rownames(m5)<-c("A","B","C")
m5

m6<-matrix(1:9,3,3)
m6
m6[2,]
m6[,3]
m6[1,2]
m6[1:2,]
m6[,2:3]


a<-matrix(1:4,nrow=2)
b<-matrix(5:8,nrow=2)
a+b
a-b
a*b


x<-matrix(1:6,nrow=2)
y<-matrix(1:6,nrow = 3)
x %*% y


m10 <-matrix(1:9,3,3)
m10

rowSums(m10)
colSums(m10)
rowMeans(m10)
colMeans(m10)

max(m10)
min(m10)
mean(m10)
     
m12<-matrix(1:12,3,4)
m12<6
m12[m12>10]<-0
m12

mat13 <- matrix(1:16, nrow = 4)
print(mat13)
print(sum(mat13 %% 2 == 0))  
print(mat13[mat13 %% 2 == 1])


m <- matrix(c(0,1,2,1,2,0,2,1,0), nrow=3, byrow = TRUE)
words <- c("Low", "Medium", "High")

print("14. Original numeric matrix:")
print(m)
word_matrix <- matrix(words[m + 1], nrow = 3)
print(word_matrix)



