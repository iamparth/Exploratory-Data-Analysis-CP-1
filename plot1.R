## Getting full dataset
data_full <- read.csv("exdata-data-household_power_consumption/household_power_consumption.txt",
                      header=T, sep=';', na.strings="?")
data_full$Date <- as.Date(data_full$Date, format="%d/%m/%Y")

## Subsetting the data
data <- subset(data_full, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(data_full)

## Plot 1
hist(data$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", col="Red")

## Saving to file
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()