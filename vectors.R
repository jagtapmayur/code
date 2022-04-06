# creating a vector
apple <- c('red','green','yellow')
print(class(apple))

# create a sequence from 5 to 13
v <- 5:13
print(v)

# create a sequence from 6.6 to 12.6
v <- 6.6:12.6

# if the final element specified does not belong to the sequence then it is discarded.
v <- 3.8:11.4
print(v)

# list
# create a list
list1 <- list(c(2,5,3),21.3,sin)
# printing the list
print(list1)

# values
list_data <- list("red","Green",c(21,32,11),TRUE,51.23,119.1)
print(list_data)

# create a matrix
M=matrix(c('a','a','b','c','b','a'), nrow = 2,ncol = 3,byrow = TRUE)
print(M)

# Arrays
a <- array(c('green','yellow'),dim=c(3,3,2))
print(a)

# Create a vector.
apple_colors <- c('green','green','yellow','red','red','red','green')
# Create a factor object.
factor_apple <- factor(apple_colors)
# Print the factor.
print(factor_apple)
print(nlevels(factor_apple))

# data frame
# create the data frame
BMI <- data.frame(
  gender = c("Male","Male","Female"),
  height = c(152,171.5,165),
  weight = c(81,93,78),
  Age    = c(42,38,26)
)
print(BMI)













