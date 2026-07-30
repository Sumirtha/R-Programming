# ==========================================================
# Question-2.r
# ==========================================================

# 2. Read a CSV table
# Plot scatter plot between two columns
# Create subset with conditions
# Compute mean of selected columns


data = read.csv("clinical_data.csv")

#2a. Create a scatter plot to study the variation of blood pressure with age.

print("2(A). Scatter plot between Blood_pressure and age has been created")

plot(data$age, data$blood_pressure,
     main = "Scatter Plot between Blood_pressure and Age",
     xlab = "blood_pressure",
     ylab = "age",
     pch = 19,
     col = "blue")

#2b. Create a subset of this data for which the disease status is 1 and print the dimension of this sebset.

print("2(B). Subset of this data for which the disease status is 1")

subset_data = subset(data, disease_status == "1")

print("The dimensions of subset for which the disease status is 1:")
print(dim(subset_data))

#2c. Compute the mean value of LDL cholesterol in this sebset and print the mean value.

print("2(C). Computing the mean value of LDL cholesterol")

mean = mean(subset_data$LDL_cholesterol, na.rm = TRUE)
print(paste("Mean of LDL Cholestrol =", mean))




