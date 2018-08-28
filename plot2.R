setwd("c:/Users/Pitas/Documents/R Working Directory/Exploratory Data Analysis/PA1/EDA_project")

if (!file.exists('plots')) {
  dir.create('plots')
}

source("Reading_data.R")

png(filename='plots/plot2.png',width=480,height=480,units='px')

plot(data$DateTime,data$GlobalActivePower,ylab='Global Active Power (kilowatts)', xlab='', type='l')

dev.off()
