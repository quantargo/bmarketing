library(tidyverse)

#################Loading data into the environment#################
bmarketing <- read.csv2("bmarketing.csv")

bmarketing$euribor3m = as.numeric(as.character(bmarketing$euribor3m))
bmarketing$cons.conf.idx = as.numeric(as.character(bmarketing$cons.conf.idx))
bmarketing$emp.var.rate = as.numeric(as.character(bmarketing$emp.var.rate))
bmarketing$cons.price.idx = as.numeric(as.character(bmarketing$cons.price.idx))
bmarketing$nr.employed = as.numeric(as.character(bmarketing$nr.employed))

#Lets look at dataset and generate initial understanding about the column types
str(bmarketing)
summary(bmarketing)


bmarketing$y<-NULL

view (bmarketing)

# A quick check:
# If newdata has same number of observation that implies no NA value present
# is.na(bmarketing)
newdata <- na.omit(bmarketing)
nrow(newdata)==nrow(bmarketing)

#A deep check for a particular column let say age
if(length(which(is.na(bmarketing$y)==TRUE)>0)){
  print("Missing Value found in the specified column")
} else{
  print("All okay: No Missing Value found in the specified column")
}

# Let's find the range of individual variables
summary(bmarketing)

## ------------------------------------------------------------------------
bmarketing %>% 
  ggplot() + geom_histogram(aes(age), bins = 30) + 
  geom_vline(aes(xintercept= median(age)), color = "red")

# TODO: do boxplots for each data
# boxplot(duration~y,data=bmarketing_sub,col="red")

#################Decision Tree#################
library(rpart)
library(rpart.plot)

dt_model<- rpart(y ~ ., data = bmarketing)
# dt_model<- rpart(y ~ poutcome + emp.var.rate + cons.price.idx + cons.conf.idx + euribor3m + nr.employed, data = bmarketing)
rpart.plot(dt_model)
summary(dt_model)

#################Testing Decision Tree #################
predictions <- predict(dt_model, bmarketing, type = "class")

## Compute the accuracy
mean(bmarketing$y == predictions)

# Lets look at the confusion matrix
table(predictions, bmarketing$y)