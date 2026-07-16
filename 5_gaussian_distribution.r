#gaussian distribution

#1. compute cumulative probability upto x
#that is area under curve from negative infinity to x
#pvalue=pnorm(x,mu,sigma)

mu=20
sigma=3
x=16
pvalue=pnorm(x,mu,sigma)
print(paste("pvalue=",pvalue))

#2. given cumulative probability ; compute corresponding x

mu=16
sigma=3
pvalue=0.7
x=qnorm(pvalue,mu,sigma)
print(paste("x=",x))

#for a given x, find probability density at x
mu=16
sigma=3
x=11
pdens=dnorm(x,mu,sigma)
print(paste("pdens=",pdens))

#random deviate
#x=rnorm(1,mu,sigma)

mu=16
sigma=3
x=rnorm(1,mu,sigma)
print(paste("x=",x))

#plot a gaussian distribution 

mu=16
sigma=3
x=seq(0,2*mu)
dens=dnorm(x,mu,sigma)
plot(x,dens,type="l",lwd=2,col="blue")

#plot histogram of random deviates

mu=16
sigma=3
x=rnorm(10000,mu,sigma)
hist(x,breaks=30,col="grey")

#unit gaussian distribution
#whose mean is 0 and standard deviation as 1

z=2.0
pvalue=pnorm(z)
z=qnorm(pvalue)
pdens=dnorm(z)
zdev=rnorm(10000)

z=seq(-4,4,0.1)
pdens=dnorm(z)
plot(z,pdens,type="l")

#gaussian histogram

z=rnorm(10000)
hist(z,breaks=30)

