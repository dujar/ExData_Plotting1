source("loading.R")

names(dt1)

#dt1 is the data.table we are focusing on
#plots the global active power time series

png("plot2.png", width=480, height=480)

dt1[,datetime:= ymd_hms(paste(Date,Time,sep=" "))]

with(dt1,
  plot(
     datetime,
     Global_active_power, 
     ylab="Global Active Power (kilowatts)",
     type = "l",
     xlab = ""
     
     
     )
)

dev.off()
