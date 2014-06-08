powerData <- read.table("./ExData_Plotting1/household_power_consumption_subset.txt", 
                        sep = ";", header = TRUE)
png(filename = "./ExData_Plotting1/plot1.png", width = 480, height = 480,
    units = "px", pointsize = 12, bg = "white", res = 72,
    restoreConsole = TRUE)
hist(powerData$Global_active_power, xlab="Global Active Power (kilowatts)", col = "red", 
     main = "Global Active Power")
dev.off()
