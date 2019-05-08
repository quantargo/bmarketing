#prediction fundtion

model <- function(dataset, target) {
  dt_model<- rpart(target ~ ., data = dataset) 
}

prediction <- function(dataset, target) {predict(rpart(target ~ ., data = dataset), dataset, type = "class")}

model_pred <- function(dataset, dt_model) {
  predictions <- predict(dt_model, dataset, type = "class") 
}
