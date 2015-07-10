## Plot the data and save the plot as plot2.png

png(filename = "plot2.png", width = 480, height = 480)

with(data, plot(y=GlobalActivePower,x=datetime, type = "n",xlab ="", ylab="Global Active Power (kilowatts)"))
with(data, lines(y=GlobalActivePower,x=datetime))

dev.off()