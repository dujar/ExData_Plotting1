source("loading.R")


#plots the histogram of the global active power 
#dt1 is the data

png("plot1.png", width=480, height=480)

hist(as.numeric(dt1$Global_active_power),
     col  ="red", 
     xlab = "Global Active Power (kilowatts)",
     main= "Global Active Power",
     ylim = c(0,1300)
)

dev.off()

