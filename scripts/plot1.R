plot1<-function(){
  hist(df$Global_active_power, main = "Global Active Power", col="red", xlab="Global Active Power (kilowatts)")
  dev.copy(png, file="plot1.png", width=480, height=480)
  dev.off()
  cat("plot1.png has been saved in ", getwd())
  
}
