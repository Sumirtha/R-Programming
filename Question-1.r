#1.(a) For x = 15.5, y = 24.8 and z = 32.6, compute the following expression in R and print the result:

#Assigning values
x=15.5
y=24.8
z=32.6

#compute
L=((x+y)/z)*sqrt(x^2+y^2+z^2)
print(L)

#(b) Plot the function

# x values
x=seq(0,10)

# Compute y
y=(10*x)/(4+x)

# Plot graph
plot(x, y, type="l", col="red", main="Plot of y = 10x/(4+x)", xlab="x", ylab="y")

