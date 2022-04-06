# reading csv file
FAO <- read.csv('FAO.csv',encoding = "ISO-8859-1")

#used to get or set the dimension of the specified matrix, array or data frame
dim(FAO)


head(FAO)
tail(FAO)
ncol(FAO)
nrow(FAO)
#used for compactly displaying the internal structure of a R object
str(FAO)

#used to see the columns of the dataset and display some portion of the data with respect to each attribute that can fit on a single line.
glimpse(FAO)
summary(FAO)

# to check null values
nmiss <- sum(is.na(FAO$Y1961))
nmiss


# na.ommit is use to remove null values'

names(FAO)[names(FAO)=="Area"] <- "Country"
head(FAO)
FAO1 <- select(FAO,-(Area.Abbreviation:longitude))
FAO1
Missing <- data.frame(colSums(is.na(FAO1)))
mean(FAO1)

FAO$continent <- countrycode(sourcevar = FAO[,"Country"],origin ="country.name",destination="continent" ) 
FAO$continent 

FAO$Region <- countrycode(sourcevar = FAO[,"Country"],origin ="country.name",destination="region" ) 
FAO$Region


#Import & attach basic FAO_Data
FAO_Data <- read.csv(file.choose(),header=T)
attach(FAO_Data)
head(FAO_Data)


#Sort FAO_Data by area abbreviation in ascending order
area_sorted_1 <-FAO_Data[order(Area.Abbreviation),]
area_sorted_1


#Sort FAO_Data by area abbreviation in ascending order
lt_sorted_1 <-FAO_Data[order(-latitude),]
lt_sorted_1

#Sort FAO_Data by latitude in descending order
sorted_lg <- FAO_Data[order(longitude),]
sorted_lg

#Sort FAO_Data by column with characters/factors 
#Sort data by column with characters/factors  in descending order
sorted_lg2 <- FAO_Data[order(longitude,decreasing=TRUE),]
sorted_lg2 

#Sort data by giving multiple columns; one column with characters/ factors & one with numericals
sorted_ITcd <- FAO_Data[order(Item,Item.Code),]
sorted_ITcd

# attacing a file
ZOMATO <- read.csv('zomato.csv')
View(ZOMATO)
FAO <- read.csv('FAO.csv',encoding = "ISO-8859-1")
View(FAO)

# outer join
outerjoin<- merge(FAO,ZOMATO,by=c("latitude"), all=TRUE)
outerjoin

# inner join
innerjoin<- merge(FAO,ZOMATO,by="Country.Code")
innerjoin

# aggregate functions
aggregate(Y1961~Y2013,data=FAO,FUN=mean)

# finding mean max min median
mean(FAO$Total_Production)
max(FAO$Total_Production)
min(FAO$Total_Production)
median(FAO1$Total_Production)



