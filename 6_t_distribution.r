# t-distribution in R


# 1.Given a t value, compute cummulative probability from -inf to t
n = 12
t = 2.1
pvalue = pt(t,(n-1))
print(paste("pvalue=", pvalue))

# 2.Given a p-value compute upto what t this is cummulative 
pvalue=0.95
n=16
t=qt(pvalue,(n-1))
print(paste("t=", t))

# 3.To compute probability density at a given t
t=-0.8
n=16
dens=dt(t,(n-1))
print(paste("dens=",dens))

# 4.Generate a random deviate from a t distribution with n-1 degree of freedom
n=16
t=rt(1,n-1)
print(paste("t=",t))

# Draw a t-distribution
t=seq(-4,4,0.1)
n=16
dens=dt(t,n-1)
plot(t,dens,type="l",lwd=2,col="red")

# plot a histogram
n=16
dens=rt(10000,n-1)
hist(dens)
