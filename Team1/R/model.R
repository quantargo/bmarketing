# model function with 2 arguments: target and dataset
model <- function(dataset, target) {
  dt_model<- rpart(target ~ ., data = dataset) 
}
