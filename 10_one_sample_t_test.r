
#input
x = c()
n = len(x)
alpha = 0.05
mu = 

#calculate
xbar = mean(x)
s = sd(x)
t= (xbar - mu)/(s/sqrt(n))

hypothesis = "two-sided"
hypothesis = "greater"
hypothesis = "lower"

#confidence interval
CI_lower = 0
CI_upper = 0

if (hypothesis = "two-sided"){
	delta = qt(1-(alpha/2), n-1)
}

CI_upper = xbar + delta * (s/sqrt(n))
CI_lower = xbar

#p value

pvalue = 1.0
if(hypothesis == "two-sided"){
#	if(t>0){pvalue = 1-pt(t,n-1)}
#	if(t<0){pvalue = pt(t,n-1)}


t_crittical = 0
if(hypothesis=="two-sided"){
	t_critical = qt((1-(alpha/2)),n-1)
}
else(hypothesis == "greater"){
	t_critical = qt((1-alpha),  n-1)
}


