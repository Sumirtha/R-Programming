# ==========================================================
# Question-4.r
# ==========================================================

# 4a. Compute 90% confidence interval
# for a given data vector

print("Question 4(A). Compute 90% confidence interval")

#Given

x = c(27.7,24.8,29.3,27.8,27.1,30.2,24.1,20.0,27.3,24.8,30.9,34.2,38.2,28.0)

confidence = 0.90

n = length(x)
m = mean(x)
s = sd(x)

error = qt((1 + confidence)/2, df = n - 1) * s / sqrt(n)

lower = m - error
upper = m + error

#Results
print("Results:")
print(paste("Mean =", m))
print(paste("Sample size =", n))
print(paste("Standard Deviation =", s))
print(paste("90% Confidence Interval =", round(lower,3) , "to", round(upper,3)))
print("The 90% Confidence Interval for the given dataset X has been computed.")

# ==========================================================
# 4b.Compare the following two data sets A and B using barplots. Mark the standard error
#on mean as the error bars for comparision.
# ==========================================================

# Compare the following two data sets A and B using barplots.
# Mark standard error on mean as error bars

print("4(B).Compare two data sets A and B using barplots. Mark the standard error on mean as the error bars for comparision.")

#Given

A = c(17.6, 20.8, 15.6, 19.9, 17.6, 23.1, 17.0, 19.2, 14.3, 17.9, 20.2, 12.8, 19.1, 24.8)
B = c(34.2, 34.6, 20.6, 36.4, 32.8, 27.4, 26.4, 28.0, 36.0, 32.5, 23.2, 25.0, 26.9, 28.4)

#mean
means = c(mean(A), mean(B))

#standard error
se1 = sd(A) / sqrt(length(A))
se2 = sd(B) / sqrt(length(B))

ses = c(se1, se2)

#barplot
bp = barplot(means,
             names.arg = c("A", "B"),
             ylim = c(0, max(means + ses) + 14),
             main = "Comparison of Two Data sets A & B",
             ylab = "Mean Value",
             col = c("lightblue", "lightgreen"))

arrows(bp, means - ses,
       bp, means + ses,
       angle = 90,
       code = 3,
       length = 0.1)

print(paste("Means: A =", round(means[1],3),
            ", B =", round(means[2],3)))

print(paste("Standard Errors: A =", round(ses[1],3),
            ", B =", round(ses[2],3)))
print("Barplot for the two data sets A & B with marking the standard error on mean as error bars has been created.")

