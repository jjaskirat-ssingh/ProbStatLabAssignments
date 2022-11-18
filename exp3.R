# cdf - pbinom
# pdf - dbinom

# Q1
print(pbinom(9,12,1/6) - pbinom(6,12,1/6))
print(dbinom(7,12,1/6) + dbinom(8,12,1/6) + dbinom(9,12,1/6)) # using dbinom

# Q2
pnorm(84, mean = 72, sd = 15.2, lower.tail = FALSE)
# pnorm(84, 72, 15.2, lower.tail = FALSE)

# Q3
dpois(0,5)
ppois(50,50) - ppois(47,50)

# Q4
print(dbinom(3,5,17/250))

# Q5
n = 31
x = 0:31
P = 0.447
plot(0:31, dbinom(0:31 ,31, 0.447), type='h')
plot(0:31, pbinom(0:31 ,31, 0.447), type='h')
mean = n * P
variance = n * P * (1-P)
sd = sqrt(variance)

print(mean)
print(variance)
print(sd)