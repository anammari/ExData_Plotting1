powerData <- read.table("./ExData_Plotting1/household_power_consumption_subset.txt", 
                        sep = ";", header = TRUE)
powerData$Date <- as.Date(powerData$Date, format="%d/%m/%Y")
datetimeStr <- paste(powerData$Date, powerData$Time, sep=" ")
datetime <- strptime(datetimeStr, format="%Y-%m-%d %H:%M:%S")
png(filename = "./ExData_Plotting1/plot4.png", width = 480, height = 480,
    units = "px", pointsize = 12, bg = "white", res = 72,
    restoreConsole = TRUE)
par(mfrow = c(2, 2), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))
plot(datetime, powerData$Global_active_power, type="l", 
           ylab="Global Active Power", xlab="")
plot(datetime, powerData$Voltage, type="l", 
           ylab="Voltage", xlab="datetime")
plot(datetime, powerData$Sub_metering_1, type="n", 
           ylab="Energy sub metering", xlab="")
lines(datetime, powerData$Sub_metering_1, type="l")
lines(datetime, powerData$Sub_metering_2, type="l", col="red")
lines(datetime, powerData$Sub_metering_3, type="l", col="blue")
legend("topright", 
               legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
               col=c("black","red","blue"), ,bty="n", lty=c(1,1,1))
plot(datetime, powerData$Global_reactive_power, type="l", 
           ylab="Global_reactive_power", xlab="datetime")
dev.off()