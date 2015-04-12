data <- read.csv('household_power_consumption.txt', sep=";",
                 stringsAsFactors=FALSE,na.strings = "?")
data <- subset(data, Date %in% c('1/2/2007', '2/2/2007'))
png("plot2.png", width = 480, height = 480)
times <- paste(data$Date, data$Time)
times <- strptime(times, "%d/%m/%Y %H:%M:%S")
plot(times, data$Global_active_power, type='l', xlab='',
     ylab="Global Active Power (kilowatts)")
dev.off()