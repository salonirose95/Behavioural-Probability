a11 <- read_excel("courtship.xlsx",sheet = "total") #import file, change file name accordinly
a12 <- read_excel("feeding.xlsx",sheet = "total") #import file, change file name accordinly

n= ncol(a11)-1 #sample size

court <- a11[,2:n]
feed <- a12[,2:n]

list <- c()
for (i in 1:900){
  list[[i]] <-  (1-sum(is.na(court[i,]))/n)*100
}
list

list1 <- c()
for (i in 1:900){
  list1[[i]] <-  (1-sum(is.na(feed[i,]))/n)*100
}

list1
write.csv(list, file = "list.csv")
write.csv(list1, file = "list1.csv")
