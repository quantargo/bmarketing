#install.packages('tidyverse')


?is.na
is.na(bmarketing$y)

install.packages('rpart.plot')

length(which(is.na(bmarketing$y)))==TRUE
      
length(which(is.na(bmarketing$y)==TRUE)>0) 

predictions

#no :3668  
 # yes: 451
##########################################3
library(tidyverse)

#################Loading data into the environment#################
bmarketing <- read.csv2("bmarketing.csv")

#Lets look at dataset and generate initial understanding about the column types
str(bmarketing)
summary(bmarketing)

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

bmarketing$poutcome <- as.factor(b)

 
$ emp.var.rate  : Factor w/ 10 levels "-0.1","-0.2",..: 5 9 10 10 1 3 3 1 1 9 ...
$ cons.price.idx: Factor w/ 26 levels "92.201","92.379",..: 9 19 24 24 12 22 22 12 12 19 ...
$ cons.conf.idx : Factor w/ 26 levels "-26.9","-29.8",..: 22 10 18 18 19 11 11 19 19 10 ...
$ euribor3m     : Factor w/ 234 levels "0.635","0.636",..: 157 208 226 223 202 98 94 202 201 208 ...
$ nr.employed 

 
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
rpart.plot(dt_model)
summary(dt_model)

#################Testing Decision Tree #################
predictions <- predict(dt_model, bmarketing, type = "class")

## Compute the accuracy
mean(bmarketing$y == predictions)

# Lets look at the confusion matrix
table(predictions, bmarketing$y)