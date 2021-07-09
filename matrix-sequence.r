#script for creating behavioural sequence over

library(readxl)
df <- read_excel("filename", sheet = "subject 30")


View(df)

a  <- df[df$Behavior=="courting",]
b  <- df[df$Behavior=="feeding",]


t <-a$time
n <-nrow(a)/2
fin <-t(matrix(t,nrow=2))

list <- c()
for (j in 1:n) { for(i in 1:900)
  if (i >fin[j,1] & i <=fin[j,2]) {
    list[[i]] <- "C"
  }
}
list

t1 <-b$time
t1
n1 <-nrow(b)/2
fin1 <-t(matrix(t1,nrow=2))

list1 <- c()
for (i in 1:900) { for(j in 1:n1)
  if (i >=fin1[j,1] & i <fin1[j,2]) {
    list1[[i]] <- "F" } }

list1

write.csv(list, file = "list.csv")
write.csv(list1, file = "list1.csv")

