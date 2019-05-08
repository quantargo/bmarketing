#prediction function
model_pred <- function(dataset, dt_model) {
  predict(dt_model, dataset, type = "class") 
}
