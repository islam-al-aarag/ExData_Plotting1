data <- read.csv('household_power_consumption.txt', sep=";",
                 stringsAsFactors=FALSE,na.strings = "?")
data <- subset(data, Date %in% c('1/2/2007', '2/2/2007'))
png("plot3.png", width = 480, height = 480)
times <- paste(data$Date, data$Time)
times <- strptime(times, "%d/%m/%Y %H:%M:%S")
plot(times, data$Sub_metering_1, t='s', col='black',
     ylab='Enery sub metering', xlab='')
lines(times, data$Sub_metering_2, t='s', col='red')
lines(times, data$Sub_metering_3, t='s', col='blue')
legend("topright", col = c('black', 'red', 'blue'),
       legend = c('Sub_metering_1', 'Sub_metering_2',
                  'Sub_metering_3'), lty=1)
dev.off()