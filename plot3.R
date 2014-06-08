powerData <- read.table("./ExData_Plotting1/household_power_consumption_subset.txt", 
                        sep = ";", header = TRUE)
powerData$Date <- as.Date(powerData$Date, format="%d/%m/%Y")
datetimeStr <- paste(powerData$Date, powerData$Time, sep=" ")
datetime <- strptime(datetimeStr, format="%Y-%m-%d %H:%M:%S")
png(filename = "./ExData_Plotting1/plot3.png", width = 480, height = 480,
    units = "px", pointsize = 12, bg = "white", res = 72,
    restoreConsole = TRUE)
plot(datetime, powerData$Sub_metering_1, type="n", 
           ylab="Energy sub metering", xlab="")
lines(datetime, powerData$Sub_metering_1, type="l")
lines(datetime, powerData$Sub_metering_2, type="l", col="red")
lines(datetime, powerData$Sub_metering_3, type="l", col="blue")
legend("topright", 
                 legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
                 col=c("black","red","blue"), lty=c(1,1,1))
dev.off()