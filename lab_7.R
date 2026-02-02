

#1. economics data set is a data set in the ggplot2 package which was produced from US economic time series
#data. Using this data set and ggplot2 package do the following tasks:
 # a. Plot a line for the total population (pop), where the x-axis in the plot displays the month of data
#collection (date).

install.packages("ggplot2")
install.packages("rlang")
library(ggplot2)
library(rlang)
data(economics, package = "ggplot2")


economics
ggplot(economics, aes(x=date,y=pop))+geom_line(col="red")+labs(
  title = "Line Ploting",
  x = "Date",
  y = "Total Population"
)
#b. Plot a line for the total population (pop) after 2005-01-01. Hint: use filter function in dplyr package.

library(dplyr)
economics_filter<-filter(economics, date>as.Date("2005-01-101"))
economics_filter
ggplot(economics_filter,aes(x=date,y=pop))+geom_line(col="red")+labs(
  title = "Total Population After 2005-001-01",
  x = "Date",
  y = "Total Population"
)

#2. flights data set is a data set in nycflights13 package which contains on-time data for all flights that departed
#NYC in 2013. Using this data set and ggplot2 package do the following tasks:
install.packages("nycflights13")
library(nycflights13)
data(flights,package="nycflights13")
flights

#a. Use a proper plot to display the data in carrier name column (carrier).
ggplot(flights,aes(x=carrier))+geom_bar()+labs(
  title = "Flights of United States",
  x = "Name of the Carrier",
  y = "Number of flights."
)


#b. Use proper plots to display the data in departure delays (dep_delay).

#c. Use proper plots to display the data in departure delays (arr_delay).

#d. Use a proper plot to display the co-variation between departure delays (dep_delay) and arrival
#delays (arr_delay).

#e. Use a proper plot to display the co-variation between origin (origin) and destination (dest).

#f. Use a proper plot to display the co-variation between origin (origin) and departure delays
#(dep_delay).

#g. Try grouping the plots used to answer section (b) by carrier name (carrier). Hint: use color
#parameter in aes function.

#h. Try facetting the plots used to answer section (b) by carrier name (carrier).

