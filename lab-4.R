

setwd("C:/Users/MSIGF63/Downloads/")
getwd()
install.packages("readxl")
library(readxl)
retail <- read_excel("Online RetaIl.xlsx")
retail

##1. How many unique products in the store?
head(retail)

length(unique(retail$StockCode))

retail_clean <- retail[!is.na(retail$CustomerID)
                        & retail$Quantity >0,]
retail_clean

unique_products <- unique(retail_clean$StockCode)
length(unique_products)

##2. Find the five most sold products.
product_total<-aggregate(Quantity~StockCode, data=retail_clean,sum)
product_total
top_5<-product_total[order(-product_total$Quantity),]
head(top_5,5)


##3. Find the products that have different descriptions.
decrip_check <- aggregate(Description~StockCode,data = retail_clean,function(x)length(unique(x)))
decrip_check
diff_desc<-decrip_check[decrip_check$Description>1,]
diff_desc

##4. Find the highest spending customer.
retail_clean$Total_price<- retail_clean$Quantity * retail_clean$UnitPrice
retail_clean

customer_total<- aggregate(Total_price~CustomerID,data = retail_clean,sum)
customer_total

max_customer <- customer_total[order(-customer_total$Total_price),]
max_customer

head(max_customer,1)

##5. Find the invoice with maximum number of unique products.
invoice_counts<- aggregate(StockCode~InvoiceNo,data = retail_clean,function(x)length(unique(x)))
invoice_counts
top_invoice<-invoice_counts[order(-invoice_counts$StockCode),]
head(top_invoice,1)

##6. Find the most popular product for each country.
country_product <- aggregate(Quantity~Country+StockCode,data = retail_clean,sum)
country_product
unique_countries <- unique(country_product$Country)
unique_countries

for (c in unique_countries){
  one_country <-country_product[country_product$Country==c,]
  top_product <- one_country[order(-one_country$Quantity),]
  print(head(top_product,1))
}

##7. Which are the two products that have customers purchased together often?
install.packages("arules")
library(arules)
invoice_products <- split(retail_clean$Description,retail_clean$InvoiceNo)
invoice_products <- lapply(invoice_products,unique)
trans <- as(invoice_products,"transactions")
rules <- apriori(trans,parameter = list(supp=0.01,conf=0.5))
inspect(head(sort(rules,by="lift"),5))



















