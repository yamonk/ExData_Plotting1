# Exercise 1: plot 3.

# Load data in hpc from file.
load(file='data/hpc.data')

# Open png.
png(filename='plots/plot3.png')

# Build plot.

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

dev.off()
