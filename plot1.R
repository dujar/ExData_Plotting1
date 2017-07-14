source("loading.R")

names(dt1)

#plots the histogram of the global active power 

hist(as.numeric(dt1$Global_active_power),
     col  ="red", 
     xlab = "Global Active Power (kilowatts)",
     main= "Global Active Power",
     ylim = c(0,1300)
)


