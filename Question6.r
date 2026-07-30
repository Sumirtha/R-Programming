# ==========================================================
# Question-6.r
# ==========================================================

# 6. Given the weight loss under three categories of diet programs, perform ANOVA
# to test equality of means
# Print results and conclusions

print("Question 6: Perform Anova")

Low_calorie = c(8,9,6,7,3)
Low_fat = c(2,4,3,5,1)
Low_carbohydrate = c(3,5,4,2,3)

values = c(Low_calorie,Low_fat,Low_carbohydrate)

groups = factor(c(rep("Low_calorie", length(Low_calorie)),
                  rep("Low_fat", length(Low_fat)),
                  rep("Low_carbohydrate", length(Low_carbohydrate))))

anova_data = data.frame(values, groups)

#Hypothesis

print("Hypothesis:")

print("Null Hypothesis: H0: All category means are equal")
print("Alternate Hypothesis: H1: At least one category mean is different")

#Results
anova_result = aov(values ~ groups, data = anova_data)

print("The Summary of performed ANOVA:")

print(summary(anova_result))

p_value = summary(anova_result)[[1]][["Pr(>F)"]][1]


#Conclusion
print("Conclusion:")

if(p_value < 0.05)
{
  print("Reject H0 because at least one category weight loss mean is significantly different")
} else {
  print("Accept H0: No significant difference among categories means")
}


