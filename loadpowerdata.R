  filename <- "household_power_consumption.txt"
  power <- read.table(filename, header=TRUE, sep=";", colClasses=c("character", "character", rep("numeric",7)), na="?")
  # convert date and time variables to Date/Time class
  power$Time <- strptime(paste(power$Date, power$Time), "%d/%m/%Y %H:%m:%s")
  power$Date <- as.Date(power$Date, "%d/%m/%Y")
  # only use data from the dates 2007-02-01 and 2007-02-02
  dfp<-power[power$Date =="2007-02-01"| power$Date =="2007-02-02",]
