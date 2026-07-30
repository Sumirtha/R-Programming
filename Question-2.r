#2.(a) Compute and print the sample mean and standard deviation for sample1
sample1 = c(21.3,20.0,22.2,15.3,17.7,23.1,18.9,20.2,23.9,19.8)
sample2 = c(11.2,13.9,17.3,18.2,27.2,26.4,15.4,22.0,24.2,18.0)
sample3 = c(24.9,15.6,24.7,25.0,32.8,23.5,20.9,30.7,24.3,29.8)

#mean of sample1
mean(sample1)
#standard deviation of sample1
sd(sample1)

#(b) Create a data frame called ”df” that contains the above three data sets as columns. Print the data frame.
# Create dataframe
df <- data.frame(sample1, sample2, sample3)

# Print dataframe
print(df)

