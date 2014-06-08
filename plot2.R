powerData <- read.table("./ExData_Plotting1/household_power_consumption_subset.txt", 
                        sep = ";", header = TRUE)
powerData$Date <- as.Date(powerData$Date, format="%d/%m/%Y")
datetimeStr <- paste(powerData$Date, powerData$Time, sep=" ")
datetime <- strptime(datetimeStr, format="%Y-%m-%d %H:%M:%S")
png(filename = "./ExData_Plotting1/plot2.png", width = 480, height = 480,
    units = "px", pointsize = 12, bg = "white", res = 72,
    restoreConsole = TRUE)
plot(datetime, powerData$Global_active_power, type="l", 
           ylab="Global Active Power (kilowatts)", xlab="")
dev.off()