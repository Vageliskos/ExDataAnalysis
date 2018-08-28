setwd("c:/Users/Pitas/Documents/R Working Directory/Exploratory Data Analysis/PA1/EDA_project")

if (!file.exists('plots')) {
  dir.create('plots')
}

source("Reading_data.R")

png(filename='plots/plot4.png',width=480,height=480,units='px')

par(mfrow = c(2,2))

plot(data$DateTime,data$GlobalActivePower,ylab='Global Active Power',xlab='',type='l')

plot(data$DateTime,data$Voltage,xlab='datetime',ylab='Voltage',type='l')

plot(data$DateTime,data$SubMetering1,type='l',col="black",xlab='',ylab='Energy sub metering')
lines(data$DateTime,data$SubMetering2,col="red")
lines(data$DateTime,data$SubMetering3,col="blue")

plot(data$DateTime,data$GlobalReactivePower,xlab='datetime',ylab='Global_reactive_power',type='l')

dev.off()