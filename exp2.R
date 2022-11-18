# Q1
chest <- c(rep('gold', 20), rep('silver', 30), rep('bronze', 50))
print(sample(chest, 10))

chances <- c("Success", "Failure")
print(sample(chances, 10, replace = TRUE, prob = c(0.9, 0.1)))

# Q2
n = as.integer(readline("Enter the value of n: "))
#p = 1
#for(i in 1:n){
#  p = p * ((365-i)/365)
#}
#print(1 - p)
pbirthday(n,classes=365,coincident=2)
qbirthday(classes=365,coincident = 2,prob=0.5)

# Q3
# x -> cloudy, y -> rainy day, xy -> cloud on rainy day
# given x, prob of rain on that day, i.e. P(y|x)?

conditionalProb <- function(x, y, xy){
  ans <- (y*xy)/x
  return (ans)
}
Px = 0.40
Py = 0.20
Pxy = 0.85
ans = conditionalProb(Px, Py, Pxy)
print(ans)


# Q4
# a
head(iris)

# b
str(iris)

# c
print(max(iris$Sepal.Length, na.rm = TRUE) - min(iris$Sepal.Length, na.rm = TRUE))

# d
print(mean(iris$Sepal.Length))

# e
print(median(iris$Sepal.Length))

# f
quantile(iris$Petal.Length, 0.25)
quantile(iris$Petal.Width, 0.25)
quantile(iris$Sepal.Width, 0.25)

quantile(iris$Petal.Length, 0.75)
quantile(iris$Petal.Width, 0.75)
quantile(iris$Sepal.Width, 0.75)

IQR(iris$Petal.Length)
IQR(iris$Petal.Width)
IQR(iris$Sepal.Width)

#g
print(sd(iris$Sepal.Length))
print(var(iris$Sepal.Length))
 
#h 
print(mean(iris$Sepal.Width))
print(mean(iris$Petal.Length))
print(mean(iris$Petal.Width))

print(median(iris$Sepal.Width))
print(median(iris$Petal.Length))
print(median(iris$Petal.Width))

print(sd(iris$Sepal.Width))
print(sd(iris$Petal.Length))
print(sd(iris$Petal.Width))

print(var(iris$Sepal.Width))
print(var(iris$Petal.Length))
print(var(iris$Petal.Width))

#i
print(summary(iris))

# Q5
mode <- function(x){
  ans <- sort(table(x))
  return (ans[length(ans)])
}

# mode2 <- function(x){
#   u <- unique(x)
#   tab <- tabulate(match(x, u))
#   u[tab == max(tab)]
# }

vecc <- c(1,2,2,2,5,5,7,7,7,7,7,7,8,9,9)
# print(mode2(vecc))
cat("Mode and its frquency: ")
print(mode(vecc))

