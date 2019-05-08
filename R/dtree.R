dtree <- function(udata) {  
    dt_model<-rpart(y ~ ., data = udata)
    dt_model
}

dtreesummary<-function(dt_model){
  summary(dt_model)
}

dtreeplot<-function(dt_model) {
  rpart.plot(dt_model)
}

dtreepredict<-function(fitdata,predictdata){
  dt_model <- dtree(fitdata)
  predictions <- predict(dt_model, predictdata, type = "class")
  predictions
}

dtreeperf<-function(target,predictions){
  accuracy<-mean(target == predictions)
  accuracy
}



