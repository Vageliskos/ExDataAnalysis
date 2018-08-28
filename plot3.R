setwd("c:/Users/Pitas/Documents/R Working Directory/Exploratory Data Analysis/PA1/EDA_project")

if (!file.exists('plots')) {
  dir.create('plots')
}

source("Reading_data.R")

png(filename='plots/plot3.png',width=480,height=480,units='px')

plot(data$DateTime,data$SubMetering1,type='l',col="black",xlab='',ylab='Energy sub metering')
lines(data$DateTime,data$SubMetering2,col="red")
lines(data$DateTime,data$SubMetering3,col="blue")

legend('topright',legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),col = c('black','red','blue'),lty='solid')


dev.off()