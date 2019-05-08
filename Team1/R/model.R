model <- function(dataset, target) {
  dt_model<- rpart(target ~ ., data = dataset) 
}
