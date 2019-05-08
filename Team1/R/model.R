# model function with 2 arguments: target and dataset 
model <- function(dataset, target) {
  rpart(target ~ ., data = dataset) 
}
