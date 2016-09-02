install.packages("ggplot2")
setwd("C:/Users/Aniket.Mandavkar/Desktop/Exploratory Data Analysis")
getwd()
#Load in necessary libraries
install.packages("dplyr")
install.packages("data.table")

library(dplyr)
library(data.table)

#Reads in data from file then subsets data for specified dates
fh <- fread("household_power_consumption.txt", na.strings="?",stringsAsFactors = FALSE)
subSetData <- fh[fh$Date %in% c("1/2/2007","2/2/2007") ,]
str(subSetData)
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()


