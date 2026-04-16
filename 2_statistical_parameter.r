#defining data
#rnorm is random
x= rnorm(20,mean=25,sd=3)
y= rnorm(20,mean=23,sd=3.5)
z= rnorm(20,mean=26,sd=2.5)
print(x)
df=data.frame(x,y,z)
print(df) #gives as table

#statistical summary
print(summary(x))
print(mean(x))
print(median(x))
print(sd(x))

#boxplot
boxplot(x)
