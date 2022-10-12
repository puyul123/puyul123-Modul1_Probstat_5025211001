####_Nomor_1_####
#1a
x <- 3 
p <- 0.2
dgeom(x, p, log=FALSE)

#1b
n <- 10000
ranGeom = rgeom(n, p)
mean(ranGeom == 3)

#1d
hist(rgeom(n, p),
     main="Histogram Geometrik",
     xlim = c(0,30),
     xlab="X",
     col="yellow",
     ylab = "Frequency")

#1e
rataan <- 1/p
varians <- (1 - p)/p^2

####_Nomor_2_####

#2a
nA <- 4
nS <- 20
p <- 0.2
dbinom(nA, nS, p)

#2b
hist(rbinom(nA, nS, p),
     main="Histogram Binomial",
     xlim = c(1,7),
     xlab="X",
     col="yellow",
     ylab = "Frequency")

#2c
q <- 1 - p
rataan <- nS * p
varian <- nS * p * q

####_Nomor_3_####

#3a
nA <- 6
lamda <- 4.5
dpois(nA, lamda, log=FALSE)

#3b
n <- 365
hist(rpois(n, lamda),
     main="Histogram Poisson",
     xlim = c(0,13),
     xlab="X",
     col="yellow",
     ylab = "Frequency")

#3d
rataan <- lamda
varian <- lamda

####_Nomor_4_####

#4a
x <- 2
v <- 10
dchisq(x, v, log=FALSE)

#4b
n <- 100
hist(rchisq(n, v),
     main="Histogram Chi-Square",
     xlim = c(0,35),
     xlab="X",
     col="yellow",
     ylab = "Frequency")

#4c
rerata <- v
varians <- 2 * v

####_Nomor_5_####

#5a
x <- 10
lamda <- 3
dexp(x, lamda, log=FALSE)

#5b
set.seed(1)
hist(rexp(n <- 10, x),
     main="Histogram Exponential Dist n = 10",
     xlim = c(0,5),
     xlab="X",
     col="yellow",
     ylab = "Frequency")
hist(rexp(n <- 100,x), 
     main="Histogram Exponential Dist n = 100",
     xlim = c(0,5),
     xlab="X",
     col="yellow",
     ylab = "Frequency")
hist(rexp(n <- 1000, x), 
     main="Histogram Exponential Dist n = 1000",
     xlim = c(0,5),
     xlab="X",
     col="yellow",
     ylab = "Frequency")
hist(rexp(n <- 10000,x), 
     main="Histogram Exponential n = 10000",
     xlim = c(0,5),
     xlab="X",
     col="yellow",
     ylab = "Frequency")
par(mfrow = c(2,2))


#5c
set.seed(1)
ranExp = rexp(n = 100, rate = 3)
rataan <- mean(ranExp)
varian <- var(ranExp)

####_Nomor_6_####

#6a
set.seed(1)
n <- 100
mean <- 50
sd <- 8
ranNormal <- rnorm(n, mean , sd)
x1 <- floor(mean(ranNormal))
x2 <- ceiling(mean(ranNormal))
z1 <- (x1 - mean)/sd
z2 <- (x2 - mean)/sd
plot(ranNormal, col = "red", pch = 16)


#6b
set.seed(1)
hist(rnorm(n = 100, mean = 50, sd = 8),
     main="5025211001_Andika Laksana Putra_A_DNhistogram",
     xlim = c(20,80),
     xlab="X",
     col="yellow",
     ylab = "Frequency",
     breaks = 50)


#6c
set.seed(1)
ranNormal <- rnorm(n = 100, mean = 50, sd = 8)
varian <- var(ranNormal)