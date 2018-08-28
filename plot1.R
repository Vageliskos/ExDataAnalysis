setwd("c:/Users/Pitas/Documents/R Working Directory/Exploratory Data Analysis/PA1/EDA_project")

if (!file.exists('plots')) {
  dir.create('plots')
}

source("Reading_data.R")

png(filename='plots/plot1.png',width=480,height=480,units='px')

hist(data$GlobalActivePower,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red')

dev.off()
