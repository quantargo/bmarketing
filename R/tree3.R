library(tidyverse)

#################Loading data into the environment#################
bmarketing <- read.csv2("data/bmarketing.csv",dec = ".")

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

## ------------------------------------------------------------------------
bmarketing %>% 
  ggplot() + geom_histogram(aes(age), bins = 30) + 
  geom_vline(aes(xintercept= median(age)), color = "red")

# TODO: do boxplots for each data
# boxplot(duration~y,data=bmarketing_sub,col="red")

#################Decision Tree#################

#install.packages(c("rpart","rpart.plot"))

model <- function(input_data,target_name) {
  library(rpart)
  dt_model<- rpart(input_data[[target_name]] ~ ., data = input_data)
  return (dt_model)
}

plot_model <- function(model) {
  library(rpart.plot)
  rpart.plot(dt_model)
}

#model(input_data=bmarketing,target_name="y")
#plot_model(model(input_data=bmarketing,target_name="y"))
#plot_model(model=dt_model)


#################Testing Decision Tree #################
predictions <- function(bmarketing, dt_model)
{
  predict(dt_model, bmarketing, type = "class")
}

## Compute the accuracy
mean(bmarketing$y == predictions)

# Lets look at the confusion matrix
table(predictions, bmarketing$y)

#devtools::create(path = "./tree3")
