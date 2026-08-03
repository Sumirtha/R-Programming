group1 = c(10, 12, 14, 13, 15)
group2 = c(18, 20, 19, 22, 21)

means = c(mean(group1), mean(group2))

se1 = sd(group1) / sqrt(length(group1))
se2 = sd(group2) / sqrt(length(group2))

ses = c(se1, se2)

bp = barplot(means,
             names.arg = c("Group 1", "Group 2"),
             ylim = c(0, max(means + ses) + 5),
             main = "Comparison of Two Groups",
             ylab = "Mean Value",
             col = c("lightblue", "lightgreen"))

arrows(bp, means - ses,
       bp, means + ses,
       angle = 90,
       code = 3,
       length = 0.1)

print(paste("Means: Group1 =", round(means[1],3),
            ", Group2 =", round(means[2],3)))

print(paste("Standard Errors: Group1 =", round(ses[1],3),
            ", Group2 =", round(ses[2],3)))
