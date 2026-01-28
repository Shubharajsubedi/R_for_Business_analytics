rep(seq(1,4),each=2,times=2)
vec[1:10]
rep(1:10,each=3,times=3)

sort(x=c("shubharaj","aman","bibal","dominar"),decreasing = FALSE)

length(x=c(1,2,3,4,5))


tor<-c(10,20,30,40,50,60,70,80,90,100)
tor[4:7]
tor[c(1,5,9,10)]
tor[-3:-8]
tor[c(-2,-5)]
tor[5]<-1000
tor[c(4,5,6,7)]<-c(50,"shubharaj",-78,34.45)
tor
tor<-c(10,20,30,40,50,60,70,80,90,100)
tor2<-c(10,20,30,40)
tor3<-tor+tor2
tor3

n<-matrix(1:18,nrow = 9,ncol = 7,byrow = TRUE)
n

m <- matrix(1:12, nrow = 3, byrow = TRUE,
            dimnames = list(
              c("R1", "R2", "R3"),
              c("C1", "C2", "C3", "C4")
            ))
m

m[2,2]
m[1:3,]


o<-matrix(1:12,nrow = 4,ncol=6,byrow=TRUE)
o
o[c(2,3),c(3,5)]


##aggregrate function
code =c(5,10,15,20,25)
data =c ("A","B","C","D","E")
df = data.frame(code,data)
aggregate(code ~ num,data=df,function(x)length(unique(x)))






