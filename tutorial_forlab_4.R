sales <- data.frame(
  InvoiceNo = c(1, 1, 2, 2, 3),
  Product = c("Pen", "Pencil", "Pen", "Notebook",
              "Pencil"), Quantity = c(2, 1, 1, 3, 2),
  Price = c(1.5, 0.5, 1.5, 2.0, 0.5),
  CustomerID = c(101, 101, 102, 103, 104),
  Country = c("UK", "UK", "UK", "USA", "USA")
)
sales


# 1. View the first few rows
head(sales)

# 2. How many rows and columns?
dim(sales)

# 3. Column names
colnames(sales)

# 4. Type of object
class(sales)
str(sales)

# 5. Total number of rows (sales transactions)
nrow(sales)

# 6. How many unique products?
length(unique(sales$Product))

# 7. Which products were sold?
unique(sales$Product)

# 8. Filter rows where product is "Pen"
subset(sales, Product == "Pen")

# 9. Filter sales where Quantity > 1
subset(sales, Quantity > 1)

# 10. Create new column TotalPrice
sales$TotalPrice <- sales$Quantity * sales$Price
sales

# 11. Total revenue from all sales
sum(sales$TotalPrice)

# 12. Total quantity sold per product
aggregate(Quantity ~ Product , data = sales, sum)

# 13. Average price per product

unique(sales$CustomerID)


# 14. Unique customers
unique(sales$CustomerID)

# 15. Total quantity sold per country
aggregate(Quantity ~ Country, data = sales, sum)

# 16. Product(s) with the highest total quantity sold
qty_per_product <- aggregate(Quantity ~ Product, data = sales, sum)
max_qty <- max(qty_per_product$Quantity)
qty_per_product[qty_per_product$Quantity == max_qty, ]

# 17. Invoice with the most total quantity sold
qty_per_invoice <- aggregate(Quantity ~ InvoiceNo, data = sales, sum)
max_qty_inv <- max(qty_per_invoice$Quantity)
qty_per_invoice[qty_per_invoice$Quantity == max_qty_inv, ]

