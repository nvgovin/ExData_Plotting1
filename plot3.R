## Plot the data and save the plot as plot3.png

png(filename = "plot3.png", width = 480, height = 480)

with(data, plot(y=SubMetering1,x=datetime, type = "n",xlab ="", ylab="Energy sub metering"))
with(data, lines(y=SubMetering1,x=datetime,col="black"))
with(data, lines(y=SubMetering2,x=datetime,col="red"))
with(data, lines(y=SubMetering3,x=datetime,col="blue"))
legend("topright",lty="solid",col = c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.off()
