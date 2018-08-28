setwd("c:/Users/Pitas/Documents/R Working Directory/Exploratory Data Analysis/PA1/EDA_project")

# read data
library(dplyr)
data <- filter(read.table("household_power_consumption.txt",header = TRUE,sep = ";",na.strings = "?"),Date == "1/2/2007"| Date == "2/2/2007")

# give distinct names to the variables
cols<-c('Date','Time','GlobalActivePower','GlobalReactivePower','Voltage','GlobalIntensity','SubMetering1','SubMetering2','SubMetering3')
colnames(data) <- cols

# convert dates and times to Date/Time classes
library(lubridate)
data$DateTime <- dmy(data$Date)+hms(data$Time)
data<-data[,c(10,3:9)]