plot4<-function(){
  par(mfrow = c(2,2) , mar=c(4,4,2,1), oma = c(0,0,2,0))
  with(df, {
    plot(df$Datetime, df$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
    plot(df$Datetime, df$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
    plot(df$Datetime, df$Sub_metering_1, type = "l", xlab = "", ylab = "Energy_Sub_metering")
    lines(df$Datetime, df$Sub_metering_2, col="red")
    lines(df$Datetime, df$Sub_metering_3, col="blue")
    legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, bty = "n", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3") )
    plot(df$Datetime, df$Global_reactive_power, type = "l", xlab = "", ylab = "Global reactive Power (kilowatts)")
  })
  dev.copy(png, file="plot4.png", width=480, height=480)
  dev.off()
  cat("plot4.png has been saved in ", getwd())
  
}
