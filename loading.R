
library(data.table)
library(lubridate)
data <- data.table(read.table("../household_power_consumption.txt", sep=";",header=T))


#We will only be using data from the dates 2007-02-01 and 2007-02-02.
#One alternative is to read the data from just those dates rather than reading in the entire dataset and subsetting to those dates.
names(data)
data
dt <- data[, Date:=dmy(Date)]

dt <- dt[Date>=ymd("2007-02-01")&Date<=ymd("2007-02-02"),][]



