#Poisson Distribution in R
#1. Cumulative probablity upto x
#pvalue=ppois(x,mu)

mu=7
x=5
pvalue=ppois(x,mu)
print(paste("pvalue=",pvalue))

#2. Given a Cumulative probablity, find corresponding x
# x=qpois(pvalue,mu)

mu=8
pvalue=0.88
x=qpois(pvalue,mu)
print(paste("x=",x))

#3. Poisson probability for a x value
#pdens=dpois(x,mu)

mu=8
x=5
pdens=dpois(x,mu)
print(paste("pdens=",pdens))

#4. Generate random deviate from a poisson
#distribution of mean mu
#x=rpois(1,mu)

mu=8
x=rpois(6,mu)
print(x)

#Plot a poisson distribution

mu=8 #when mu is very large has a bell shape(continuous) eventhough it is discrete, this is called continuous approxiamation of discrete distribution.
x=seq(0,3*mu)
dens=dpois(x,mu)
plot(x,dens,type="h",col="red")

#plot the random deviate distribution 

mu=7
pdens=rpois(1000,mu)
tab=table(pdens) #will give me tabular form of pdens
print(tab)
plot(tab,type="h")


