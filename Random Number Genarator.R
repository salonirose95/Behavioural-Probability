#Random Number Generator
n= nrow(df) # Total Sample Size
n1 = 30  # subset size
v<- seq(1:n)
vs1<-sort(sample(v,n1,replace=FALSE) )
vs1