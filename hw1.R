# 1st Question
dat <- read.csv("femaleMiceWeights.csv")
hist(dat$Bodyweight,col = "light blue", breaks = 40)
dat$Bodyweight
summary(dat)
# 2nd Question
dat[12,2]
# 3rd Question
dat$Bodyweight[11]
# 4th Question
length(dat$Bodyweight)
# 225 mice were observed
# 5th Question
v1 = seq(3,7)
#hf ? 
mean(dat$Bodyweight)
# 6th Question
num <- 13:24
set.seed(1)
x = sample(num,replace = TRUE, size = 1)
dat$Bodyweight[x]
# Homework 2
#1st Question
library(dplyr)
library(ggplot2)
data(msleep)
dat2 <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/msleep_ggplot2.csv"
sleep <- read.csv(dat2)
head(sleep)
#2nd Question
class(sleep)

chow<-filter(sleep, order=="Primates")
head(chow)
nrow(chow)
#3rd Question
class(chow)
#4th Question
chowvals<-filter(sleep, order=="Primates") %>% select(sleep_total) %>% unlist 
chowvals
#%5th Question
sumchow<-sum(chowvals)
print(chowvals)
print(sumchow)
class(chowvals)