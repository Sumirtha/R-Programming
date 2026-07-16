# plot the historgram of SOCR data

# Read data into dataframe

dat=read.csv(file="SOCR_height_weight_data.csv",header=TRUE)
print(dim(dat))
print(colnames(dat))

# Convert Height to centimeters, weight to kg

height = dat$Height.Inches * 2.5
weight = dat$Weight.Pounds * 0.45

# Compute mean, sigma, Z of height and weight

mu_height = mean(height)
sigma_height=sd(height)
z_height=(height - mu_height)/sigma_height
print(z_height)
print(mu_height)
print(sigma_height)

mu_weight=mean(weight)
sigma_weight=sd(weight)
z_weight=(weight - mu_weight)/sigma_weight
print(z_weight)
print(mu_weight)
print(sigma_weight)

# split canvas into 2,2 and fill along rows/columns.
# par(mfrow=c(2,2)) , par(mfcol=c(2,2))

par(mfrow=c(2,2))
hist(height,breaks=30,col="blue")
hist(z_height,breaks=30,col="blue")
hist(weight,breaks=30,col="red")
hist(z_weight,breaks=30,col="red")
