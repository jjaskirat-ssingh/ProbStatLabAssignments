# 1
punif(45, 0, 60, lower.tail = FALSE)
punif(20, 0, 30)

# 2 a
x<-3 
dexp(3,1/2)

# 2 b
r<-0:5
y<-dexp(r,1/2)
plot(r,y)

# 2 c
m<-3
pexp(m,1/2)

# 2 d
m<-0:5
n<-pexp(m,1/2)

# 2 e
o<-rexp(1000,1/2)
plot(o)

# 3 a (i)
x<-3
dgamma(x,shape=2,scale=1/3)

# 3 a (ii)
pgamma(1,shape=2,scale=1/3,lower.tail = FALSE)

# 3 b
qgamma(0.70,shape=2,scale=1/3,lower.tail = TRUE)