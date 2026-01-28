data(package=.packages(all.available = TRUE))


install.packages("nycflights13")
library(nycflights13)
data(weather, package="nycflights13")
weather





install.packages("ggplot2")
library(ggplot2)
data(economics, package="ggplot2")
economics


txtfile<-scan("C:\\sem3\\r programming\\2.txtx.txt")
txtfile
min(txtfile)
max(txtfile)
mean(txtfile)


install.packages("readxl")
library(readxl)
data<-read_excel(path = "C://Users//DELL//Downloads//ExcelExample.xlsx", sheet = 3)
head(data)

library(readxl)
mycsv<-read.csv(file = "C:\\Users\\DELL\\Downloads\\TomatoFirst.csv")
head(mycsv)
nrow(mycsv)
ncol(mycsv)
dim(mycsv)

mycsv[mycsv$Sweet==min(mycsv$Sweet),]
sum(mycsv$Price[mycsv$Source == "Whole Foods"])

price_agg <- aggregate(Price ~ Source, data = mycsv, FUN = sum)

price_agg[price_agg$Source == "Whole Foods", ]


install.packages("DBI")
install.packages("RSQLite")
library(DBI)
library(RSQLite)
url<-" http://www.jaredlander.com/data/diamonds.db" 
mydatabase<-"C://Users//DELL//Downloads//diamonds (1).db"
mydatabase
download.file(url, destfile =mydatabase, mode="wb")
con<-dbCanConnect(RSQLite::SQLite(),dimname=mydatabase)
dbListTables(con )
dimaonds


install.packages("DBI")
install.packages("RSQLite")
library(DBI)
library(RSQLite)
url<-" http://www.jaredlander.com/data/diamonds.db" 
destfile<-"C://Users//DELL//Downloads//diamonds (1).db"
destfile
download.file(url,destfile=destfile, mode = "wb")
con<-dbConnect(RSQLite::SQLite(),dbname=destfile)
dbListTables(con)
diamonds_data<-dbReadTable(con,"diamonds")
head(diamonds_data)
dbListFields(con,name="diamonds")
dbListFields(con,name="DiamondColors")
diamondsTable<-dbGetQuery(con,"SELECT * FROM diamonds",StringAsFactors=FALSE)
head(diamondsTable)