# Exercise 1: plot 1.

# Load data in hpc from file.
load(file='data/hpc.data')

# Open png.
png(filename='plots/plot1.png')

# Build plot.
hist(hpc$Global_active_power,
     main='Global Active Power',
     xlab='Global Active Power (kilowatts)',
     col='red')

dev.off()
