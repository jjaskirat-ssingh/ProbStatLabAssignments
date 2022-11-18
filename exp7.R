# Q1
n <- 100
df <- n - 1
f <- rt(n, df)
hist(f)

# Q2
n <- 100
df <- c(2,10,25)
for (el in df){
  x <- rchisq(n, el)
  hist(x)
}

# Q3
s <- runif(100, -6, 6)
df3 <- c(1,4,10,30)
dt(s,df3[1])

plot(s, dt(s, df3[4]))

# Q4 (i)
qf(0.95, 10, 20)

# Q4 (ii)
pf(1.5, 10, 20)

# Q4 (iii)
qf(c(0.25, 0.5, 0.75, 0.999), 10, 20)

# Q4 (iv)
rf(1000, 10, 20)
hist(rf(1000, 10, 20))