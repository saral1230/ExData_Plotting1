  filename <- "household_power_consumption.txt"
  power <- read.table(filename, header=TRUE, sep=";", colClasses=c("character", "character", rep("numeric",7)), na="?")

  # convert date variables to Date/Time class
  power$Date <- as.Date(power$Date, "%d/%m/%Y")

  # only use data from the dates 2007-02-01 and 2007-02-02
  df<-power[power$Date =="2007-02-01"| power$Date =="2007-02-02",]
  datetime <- paste(df$Date, df$Time)
  df$Datetime <- as.POSIXct(datetime)
