model_data <- function(dataset, target_var){
  
  dt_model<- rpart(y ~ ., data = dataset )
  
  dt_model
  
  
}