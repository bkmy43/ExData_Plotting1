# -- plot2.R: "Exploratory Data Analysis" Course Project 1, Part 2/4 --

# read source data, but only rows, corresponding to 01.02.2007 and 02.02.2007
csv <- read.table("household_power_consumption.txt", header=TRUE,sep=";",
                  skip=66636, nrows=69517-66637, 
                  col.names=c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
                  colClasses=c("character","character", rep("numeric",7)))

# set output device to png file with given size
png("plot2.png", width=480, height=480)

# overwrite system locale in order to get english week days in x-axis
Sys.setlocale("LC_TIME", "en_US.UTF-8")

# build graphics
plot( type = "l", 
      strptime(paste(csv$Date, csv$Time, sep=" "), "%d/%m/%Y %T"),
      csv$Global_active_power, 
      xlab = "",
      ylab = "Global Actve Power (kilowatts)")

# write to file and close it
dev.off()

