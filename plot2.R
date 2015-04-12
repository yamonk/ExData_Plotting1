# Exercise 1: plot 2.

load(file = 'data/hpc.data')

# Open png.
png(filename = 'plots/plot2.png')

plot(hpc$datetime,
     hpc$Global_active_power,
     type='l',
     ylab='Global Active Power (kilowatts)',
     xlab='')

dev.off()

