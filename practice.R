code =c(5,10,15,20,25)
num =c ("A","A","C","C","E")
df = data.frame(code,num)
aggregate(code ~ num,data=df,function(x)length(unique(x)))


code =c(5,5,15,20,25)
num =c ("A","B","C","D","E")
df = data.frame(code,num)
aggregate(num ~ code,data=df,function(x)length(unique(x)))


code = c(101,101,102,102)
num = c("Red","Blue","Book","Book")
df = data.frame(code,num)
aggregate(num~code,data = df,function(x)length(unique(x)))

##enter values for 5 students in maths,science and social with three students of maths.calxulate the total marks.
subjects <- c ("M","M","M","S","So")
students <- c("shubharaj","subash","saroj","gyanisha","herderson")
marks <- c (80,90,100,67,75)
df<-data.frame(subjects,marks,students)
aggregate(marks~students,data = df,sum)
aggregate(marks~students,data = df,function(x)length(unique(x)))
aggregate(subjects~students,data = df,function(x)length(unique(x)))


plot(1,2)
plot(c(1,2),c(5,6))

plot(c(3,2,4,5),c(5,6,7,8))

x<- c(10,12,13,14,15)
y<- c(16,17,18,19,20)
plot(x,y)

plot(1:10,type = "l",main = "The line pLOT",xlab = "numbers",ylab = "values",col="red")
plot(1:10,col="blue",cex=0.9,pch=5)

plot(2:10,type = "l",lwd=5,col="purple")
plot(2:10,type = "l",lty=6,col="orange")

line1 <- c(3,2,4,5,10)
line2 <-c(5,6,7,8,15)
line3<- c(9,10,12,5,8)
plot(line1,type="l",col="red")
lines(line2,type="l",col="blue")
lines(line3,type="l",col="orange")


x<-c(41:80)
y<-c(30:100)
z<-c(44:90)
plot(x,col="red",cex=2,xlab = "Studentid",ylab = "marks",lwd=2)
points(y,cex=2,col="blue",lwd=2)
points(z,cex=2,col="purple",lwd=2)



x1 <- c (1:10)
x2<- c(21,30)
y1<-c(11:20)
y2<-c(31,40)
plot(x1,y1,main="Scatter PLot",xlab="StudentsID",ylab="Marks",col="red",cex=2)
points(x2,y2,cex=2,col="blue")


l1<-c(11,47,38,19)
l2<-c("grocery","transport","room","university fee")
pie(l1,init.angle = 90,main="Monthly Expenditure",labels = l2)






