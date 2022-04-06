# Durvesh Patil Roll No-19
# regression techniques
# linear regression give us line
# y = ax+b
# non linear give us curve
library("tidyverse")
library("modelr")
myData2 = read_csv("restaurant_revenue.csv", col_names=TRUE)
head(myData2)

x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

#Apply lm() function on x and y
relation = lm(y ~ x)
print(relation)
print(summary(relation))

# Find the weight of person whose heeight is 170
a <- data.frame(x=170)
result <- predict(relation,a)
print(result)


#Give the chart file a name
png(file = "linearreg.png")

#plot the chart
plot(y,x,col = "blue", main= " Height & Weight Regression", 
     abline(lm(x~y)),cex = 1.3,pch=16,xlab = "Weight in kg",ylab = "Height in cm")

#Save the file 
dev.off()


# <<< Multiple Regression >>>
input <- mtcars[,c("mpg","disp", "hp", "wt")]
print(head(input))

#Create the relationship model
model <- lm(mpg~disp+hp+wt, data = input)

#Show the model
print(model)



# logistic regression
input1 <- mtcars[,c("am","cyl","hp","wt")]
print(head(input1))

#create regression model
am.mtcars=glm(formula=am~cyl+hp+wt, data=input1,family=binomial)
print(summary(am.mtcars))

# donrm
x <- seq(-10,10,by=.1)
y <- dnorm(x,mean=2.5,sd=0.5)
png(file="donrn.png")
plot(x,y)
dev.off() # use to save the file


# pnorn
x <- seq(-10,10,by=.2)
y <- pnorm(x,mean =2.5,sd=2)
png(file="pnorm.png")
plot(x,y)
dev.off()


# qnorm()
x <- seq(0,1,by=0.02)
y <- qnorm(x, mean = 2,sd=1)
hist(y,main ="normal distribution")
png(file="qnorm.png")
plot(x,y)
dev.off()


# rnorm()
y <- rnorm(50)
png(file="rnorm.png")
plot(y)
dev.off()

# Durvesh Patil Roll No-19
# binomial distribution
# size= no of trials
# n is no of observation
# p is probability
# x is vector of number

#dbinom()
x<- seq(0,50,by=1)
y<- dbinom(x,50,0.5)
png(file="dbinom.png")
plot(x,y)
dev.off()


# pbinom()
x<-pbinom(26,51,0.5)
print(x)

# qbinorm()
x<- qbinom(0.25,51,1/2)
print(x)

# rbinom()
# renerate requred no of values from given values
x<-rbinom(8,150, .4)
print(x)



# poission regression
input<-warpbreaks
print(head(input))

output<-glm(formula = breaks~wool + tension,data=warpbreaks,
            family = poisson
            )
output
print(summary(output))

