# principle component analysis
data("iris")
library(ggplot2)
head(iris)
summary(iris)
myPrc<-prcomp(iris[,-5],scale=TRUE)
plot(iris$Sepal.Length,iris$Sepal.Width)
plot(scale(iris$Sepal.Length),scale(iris$Sepal.Width))
myPrc
summary(myPrc)
plot(myPrc,scale='1')
biplot(myPrc,scale=0)
str(myPrc)
myPrc$x
iris2<-cbind(iris,myPrc$x[,1:2])
head(iris2)
ggplot(iris2,aes(PC1,PC2,col=Species,fill=Species))+stat_ellipse(geom="polygon",col="red",alpha=0.5)+geom_point(shape=21,col="black")
cor(iris2[,-5],iris2[,6:7])

