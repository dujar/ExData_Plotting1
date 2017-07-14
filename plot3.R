source("./loading.R")


#plots the histogram of the global active power 
#dt1 is the data

png("plot3.png", width=480, height=480)

dt1[,datetime:= ymd_hms(paste(Date,Time,sep=" "))]

dt1
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

dev.off()

