plot3<-function(){
  legend("topright", col = c("black", "red", "blue"), lty=1, lwd=2, 
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3") )
  dev.copy(png, file="plot3.png", width=480, height=480)
  dev.off()
  cat("plot2.png has been saved in ", getwd())
  
}