# time serise
library(forecast)
data("AirPassengers")
class(AirPassengers)
AirPassengers

start(AirPassengers)

end(AirPassengers)
#Find out If There Are Any Missing Values
sum(is.na(AirPassengers))
#Check the Summary of the Dataset
summary(AirPassengers)
#Plot the Dataset
plot(AirPassengers)

#Decompose the Data Into Four Components
tsdata <- ts(AirPassengers, frequency = 12) 
ddata <- decompose(tsdata, "multiplicative")
plot(ddata)


#Plot the Different Components Individually
plot(ddata$trend)
plot(ddata$seasonal)
plot(ddata$random)


#.	Plot a Trendline on the Original Dataset
plot(AirPassengers)
abline(reg=lm(AirPassengers~time(AirPassengers)))

boxplot(AirPassengers~cycle(AirPassengers, xlab="Date", ylab = "Passenger Numbers (1000's)", main = "Monthly air passengers boxplot from 1949-1960"))
