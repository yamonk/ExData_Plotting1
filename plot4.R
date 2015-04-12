# Exercise 1: plot 4.

# Load data in hpc from file.
load(file='data/hpc.data')

# Open png.
png(filename='plots/plot4.png')

# Build plot.
par(mfrow = c(2, 2)) 

# (1,1)
plot(hpc$datetime,
     hpc$Global_active_power,
     type='l',
     ylab='Global Active Power',
     xlab='')

# (1,2)
plot(hpc$datetime,
     hpc$Voltage,
     xlab='datetime',
     ylab='Voltage',
     type='l')

# (2,1)
plot(hpc$datetime,
     hpc$Sub_metering_1,
     type = 'l',
     col = 'black',
     xlab = '',
     ylab = 'Energy sub metering')
lines(hpc$datetime, hpc$Sub_metering_2, col = 'red')
lines(hpc$datetime, hpc$Sub_metering_3, col = 'blue')
legend('topright', 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'), 
       lty='solid')

# (2,2)
plot(hpc$datetime,
     hpc$Global_reactive_power,
     xlab='datetime',
     ylab='Global_reactive_power',
     type='l')

dev.off()
