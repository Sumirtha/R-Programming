#4.(a) Plot a binomial distribution P(x,n,p) with n=12, p=0.6

n=12
p=0.6
x=seq(0,n)
Probability=dbinom(x,n,p)
plot(x,Probability,type="h",col="red",pch=20,xlab="x",ylab="Probability", main="Binomial Distribution")

#(b) Generate 10 random deviates from a Poisson distribution with µ = 7.0 and print them.
#print the random deviate distribution 

mu=7
pdens=rpois(10,mu)
tab=table(pdens) #will give me tabular form of pdens
print(tab)
