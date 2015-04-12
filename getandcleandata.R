# Get raw data.
fileUrl <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
download.file(fileUrl, destfile = 'data/household_power_consumption.zip', method='curl')

# Unzip.
unzip('data/household_power_consumption.zip', exdir = 'data')

# Get and store date.
currentDate <- as.POSIXlt(Sys.time(), 'GMT')
write(toString(currentDate), file = 'data/date_downloaded')

# Read the data into R.
hpc <- read.table('data/household_power_consumption.txt',
                  header = TRUE,
                  sep = ';',
                  na.strings = '?',
                  colClasses = c('character', 'character', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric'))

# Only select using data from the dates 2007-02-01 and 2007-02-02.
hpc <- hpc[hpc$Date == '1/2/2007' | hpc$Date == '2/2/2007', ]

# New field: datetime
hpc$datetime <- as.character(as.Date(hpc$Date, "%d/%m/%Y"))
# Add time to it.
hpc$datetime <- paste(hpc$datetime, hpc$Time)
# Convert to time
hpc$datetime <- strptime(hpc$datetime, "%Y-%m-%d %H:%M:%S")

# Save cleaned data.
save(hpc, file = 'data/hpc.data')
