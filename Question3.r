# ==========================================================
# Question-3.r
# ==========================================================

# 3. Generate 8000 random deviates from Gaussian distribution
# with given mean and SD
# Plot histogram

print("3.(A) Plot the histogram of this distribution in red color. Print the mean and standard deviation of the generated distribution.")

x = rnorm(8000, mean = 20, sd = 3.5)

#Histogram

hist(x,
     breaks = 30,
     main = "Histogram of Gaussian Distribution",
     xlab = "Values",
     ylab = "Frequency",
     col = "red")

m = mean(x)
s = sd(x)

#Results
print(paste("Mean =", m))
print(paste("SD =", s))
print("The Histogram has been plotted.")


# ==========================================================
# 3(B).r
# ==========================================================

# Filter values more than 3 SD from mean

print("3(B).Filter the data points whose values are greater than 3 standard deviations and print them")

filtered_values = x[x > m + 3*s | x < m - 3*s]

print("Values more than 3 SD from mean:")
print(filtered_values)


