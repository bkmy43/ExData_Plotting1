# plot1.R: Course Project 1, Part 1/4

# read source data, but only rows, corresponding to 01.02.2007 and 02.02.2007
csv <- read.table("household_power_consumption.txt", header=TRUE,sep=";",
                  skip=66636, nrows=69517-66637, 
                  col.names=c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
                  colClasses=c("character","character", rep("numeric",7)))

# set output device to png file with given size
png("plot1.png", width=480, height=480)

# build graphics
hist( csv$Global_active_power, 
      main = "Global Active Power",
      xlab = "Global Actve Power (kilowatts)", 
      ylim = c(0,1300), col='Red')

# write to file and close it
dev.off()

