#library("pracma")
#install.packages("pracma")

# Q1 (i)
fun <- function(x,y) 2*(2*x + 3*y)/5 
integral2(fun,0,1,0,1)

# Q1 (ii)
fun1 <- function(y) 2*(2 + 3*y)/5      # Put value of x = 1
integral(fun1,0,1)

fun2 <- function(y) fun(1,y)  # same as above but better
integral(fun2,0,1)

# Q1 (iii)
fun3 <- function(x) fun(x,0)  # gives marginal
integral(fun3,0,1)

# Q1 (iv)
fun4 <- function(x,y) x*y*fun(x,y)
integral2(fun4, 0, 1, 0, 1)

# ------------------------------------------------------------

#fun5 <- function(x,y) (x+y)/30

#vec1 <- c(fun5(0,0), fun5(0,1), fun5(0,2))
#vec2 <- c(fun5(1,0), fun5(1,1), fun5(1,2))
#vec3 <- c(fun5(2,0), fun5(2,1), fun5(2,2))

#mat <- matrix(vec1, vec2, vec3)
#mat

# Q2 (i)
c<-matrix(0, nrow=4, ncol=3)
c
x <- c(0,1,2,3)
y <- c(0,1,2)
for (i in 1:length(x)){
  for (j in 1:length(y)){
    c[i,j] <- fun5(x[i],y[j])
  }
}
c

# Q2 (ii)     
sum(c)

# Q2 (iii)
row_sum = apply(c,1,sum)
row_sum
sum(row_sum)

# Q2 (iv)
col_sum = apply(c,2,sum)
col_sum
sum(col_sum)

# Q2 (v)
xx <- 0
yy <- 1
ans <- c[xx+1,yy+1]/col_sum[yy+1]
ans

# Q2 (vi)
ex <- sum(x*row_sum)
ex

ey <- sum(y*col_sum)
ey

exy <- 0
for (i in 1:length(x)){
  for (j in 1:length(y)){
    exy <- exy + x[i]*y[j]*c[i,j]
  }
}
exy

ex2 <- sum((x^2)*row_sum)
var_x <- ex2 - ex^2
var_x

ey2 <- sum((y^2)*col_sum)
var_y <- ey2 - ey^2
var_y

cov_xy <- exy - ex*ey
cov_xy

corr_eff <- cov_xy / sqrt(var_x * var_y)
corr_eff
