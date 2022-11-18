## Question 1
#part 1
data = read.csv('Clt-data.csv')
dim(data)

#part 2
print(head(data,10))
print(nrow(data))

##part 3
m = mean(data$Wall.Thickness)
print(m)
hist(data$Wall.Thickness)

##part 4
abline(v = m,col = c("red"))

## Question 2
func <- function(size,data) {
  numOfSamples = 9000
  means = numeric()
  for(i in 1:numOfSamples) {
    val = sample(data$Wall.Thickness,size,replace = T)
    means = append(means,mean(val))
  }
  means
}
par(mfrow=c(2,2))
hist(func(10,data))
hist(func(50,data))
hist(func(500,data))
hist(func(9000,data))