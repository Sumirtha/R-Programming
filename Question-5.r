#5.(a) Generate 10000 data points from a unit normal distribution and plot the histogrm of the data.

data=rnorm(10000,mean=0,sd=1)
print(data)
hist(data,breaks=30,col="red",main="Histogram of Unit normal Distribution",xlab="Values")


#(b) Compute the mean of the above data and print it on the screen.

mean(data)
