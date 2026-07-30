# ==========================================================
# Question-1.r
# ==========================================================

# 1(A). Set up a for loop in R to compute Q = 3*i^3 -6*i^2 +5 for i
 
print("1(A). For loop to compute Q = 3*i^3 -6*i^2 +5")
print("The values of Q are:")
for(i in 1:10)
{
  Q = 3*i^3 -6*i^2 +5
  print(paste("For i =", i, "; Q =", Q))
}

# ==========================================================
# 1(B).r
# ==========================================================

# 1(B). Plot a given function f(y) in range -3 to 3
# in steps of 0.1

print("1(B). Plot a given function f(y) = x^3 - 10*x^2 + 5*x
 in range -3 to 3 in steps of 0.1")

x = seq(-3, 3, by = 0.1)

f = x^3 - 10*x^2 + 5*x

plot(x, f,
     type = "l",
     main = "Plot of f(y) = x^3 - 10*x^2 + 5*x",
     xlab = "x",
     ylab = "f(y)")
print("The given function y = x^3 - 10*x^2 + 5*x  has been plotted.")
