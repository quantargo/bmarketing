model <- function(input_data,target_name) {
  library(rpart)
  dt_model<- rpart(input_data[[target_name]] ~ ., data = input_data)
  return (dt_model)
}

plot_model <- function(model) {
  library(rpart.plot)
  rpart.plot(dt_model)
}