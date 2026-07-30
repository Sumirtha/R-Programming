#3. In the attached data file called ”test data.csv”, four response variables for a pain index are measured for 100 patients. Write an R script to compute the following:

#a.Read the file into a data frame called ”mydat"
mydat = read.csv("test_data.csv")
print(mydat)

#b.create a scatter plot between ”pain index” and ”medicine response”
plot(mydat$pain_index,mydat$medicine_response,xlab="Pain_Index",ylab="Medicine_Response",col="red",pch=20,main="Pain Index vs Medicine Response")

#d.Create a subset of ”mydat” for ”pain_index” in the range 50 to 95 and write it into a file called ”subset.csv”
subset_data= subset(mydat, pain_index >= 50 & pain_index <= 95)
write.csv(subset_data, "subset.csv", row.names=FALSE)

