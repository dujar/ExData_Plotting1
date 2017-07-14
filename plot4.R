source("./loading.R")


#plots the histogram of the global active power 
#dt1 is the data
dt1[,datetime:= ymd_hms(paste(Date,Time,sep=" "))]

png("plot4.png", width=480, height=480)


par(mfrow=c(2,2))

##plot2

with(dt1,
     plot(
       datetime,
       Global_active_power, 
       ylab="Global Active Power (kilowatts)",
       type = "l",
       xlab = ""
       
       
     )
)
##plot 4 voltage in y axis
with(dt1,
     plot(
       datetime,
       Voltage, 
       ylab="Voltage",
       type = "l",
       xlab = "datetime"
       
       
     )
)


##plot 3
with(dt1,
     plot(
       datetime,
       Sub_metering_1, 
       ylab="Energy Sub Metering",
       type = "l",
       xlab = ""
     )
)

with(dt1,
     lines(datetime,
           Sub_metering_2,
           col = "red"
     )
)

with(dt1,
     lines(datetime,
           Sub_metering_3,
           col = "blue"
     )
)

legend("topright",
       col=c("black","red","blue"),
       lty=1,
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
)




##plot 4 voltage in y axis
with(dt1,
     plot(
       datetime,
       Global_reactive_power, 
       type = "l",
       xlab = "datetime"
       
       
     )
)

dev.off()

