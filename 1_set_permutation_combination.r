#set operation
a=c(10,20,30,40,50,60,70,80,90)
b=c(70,80,90,100,120)
c=c(90,100)

#union between set
u= union(a,b)
print(u)

#intersection

i=intersect(a,b)
print(i)

#intersection of 3 sets

i=intersect(intersect(a,b),c)
print(i)

# venn diagram 
library(gplots)  # inorder for venn diagram import library gplots

venn(list(a,b,c))

#random sampling from a dataset
x=seq(1,100)
s1= sample(x,12,replace = FALSE)
#sampling in x la 12 random value is generated without repetition
print(s1)

x=c("A","T","G","C")
s=sample(x,40, replace =TRUE)
print(s)

dna_string=paste(s,collapse="")
print(dna_string)

#simple coin toss

x=c("H","T")
toss=sample(x,20,replace= TRUE)
print(toss)

#--------------------------------------------------------------

#creating permutation and combination
library(gtools)

x=c("A","B","C","D")

#permutaion od n elements of x taken r at a time

permlist=permutations(n=length(x),r=3,v=x,repeats.allowed=FALSE,collapse="") #permutation function ku permutations "s" mukiyam bigileh   assigning x as v
print(permlist)

#combination

x=c("A","B","C","D")

comblist=combinations(n=length(x),r=3,v=x)
print(comblist)


