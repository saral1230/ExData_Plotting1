plot3<-function(){
  plot(df$Datetime, df$Sub_metering_1, type = "l", xlab = "", ylab = "Energy_Sub_metering")
  lines(df$Datetime, df$Sub_metering_2, col="red")
  lines(df$Datetime, df$Sub_metering_3, col="blue")
  legend("topright", col = c("black", "red", "blue"), lty=1, lwd=2, 
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3") )
  dev.copy(png, file="plot3.png", width=480, height=480)
  dev.off()
  cat("plot3.png has been saved in ", getwd())
  }
