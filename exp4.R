# Q1
X <- c(0,1,2,3,4)
P <- c(0.41, 0.37, 0.16, 0.05, 0.01)
print(sum(X * P))
print(weighted.mean(X, P))
print(c(X %*% P))


# Q2
# syntax: <integrate(function, lower, upper)>
f <- function(t) 0.1 * exp(-0.1*t)*t
ans = integrate(f, 0, Inf)
# print(ans)
print(ans$value)


# Q3
p <- c(0,1,2,3)
#p2 <- c(0:3)
q <- c(0.1,0.2,0.2,0.5)
fun <- function(x) 12*x + 2*(3-x) - 18
print(weighted.mean(fun(p), q))
#print(weighted.mean(fun(p2), q))
#ans3 = integrate(fun, 0, 3)
#print(ans3$value)


# Q4 
first <- function(x) 0.5 * exp(-abs(x))*x
second <- function(x) 0.5 * exp(-abs(x))*x*x
first_moment = integrate(first, 1, 10)
paste("Mean/First moment: " ,first_moment$value)
second_moment = integrate(second, 1, 10)
paste("Second moment: " ,second_moment$value)
var = second_moment$value - (first_moment$value * first_moment$value)
paste("Variance: " ,var)


# Q5
f <- function(x) (3 / 4) * (1 / 4)^(x - 1)
p <- function(x) x^2
x <- c(1:5)
p5 <- p(x)
print(p5)
p(3)
ans <- p5[3] * f(3)
print(ans)
fm <- sum(f(x) * p5)
print(fm)
sm <- sum(f(x) * p5 * p5)
print(sm)
var <- sm - fm^2
print(var)

