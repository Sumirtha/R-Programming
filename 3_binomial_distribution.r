#1. pbinom(x,n,p)=returns cumulative p-value up to x values
x=7
n=10
p=0.5
pvalue=pbinom(x,n,p)
print(pvalue)

#2. x=qbinom(pvalue,n,p)= from p value return x value

n=10
p=0.2
pvalue=0.7
x=qbinom(pvalue,n,p)
print(x)

#3. pdens=dbinom(x,n,p)= give binomal probability of p(x,n,p)

n=10
p=0.5
x=4
pdens=dbinom(x,n,p)
print(pdens)


#4.x=rbinom(1,n,p) returns a random deviate from p(n,b)

n=10
p=0.5
x=rbinom(1,n,p)
print(x)

#5. cumulative distirbution

n=10
p=0.5
x=seq(0,10)
pvalue=pbinom(x,n,p)
plot(x,pvalue,pch=20,col="blue")

#6. binomial probability distribution
x=seq(0,10)
n=10
p=0.5
dens=dbinom(x,n,p)
plot(x,dens,type="h")

#7. stimulate binomial distribution
n=10
p=0.5
x=rbinom(1000,n,p)
tb=table(x)
print(tb)
plot(tb)

df=data.frame(tb)


