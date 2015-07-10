## Using data from the dates 2007-02-01 and 2007-02-02

data <- read.table(file="C:/coursera/ExData/household_power_consumption.txt",sep=";",header=FALSE,na.strings="?",nrows=2880,skip=66637)
colnames(data) <- c("date","time","GlobalActivePower","GlobalReactivePower","Voltage","GlobalIntensity","SubMetering1","SubMetering2","SubMetering3")

## Cleaning the data and preparing it for plot # 1.
## Converting Dates

data$datetime <- strptime(paste(data$date,data$time, sep = " "), format = "%d/%m/%Y %H:%M:%S")
data$date <- as.Date(data$date,format="%d/%m/%Y")

## Plot the data and save the plot as plot1.png
png(filename = "plot1.png", width = 480, height = 480)

hist(data$GlobalActivePower,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")

dev.off()


