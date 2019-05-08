#' Returns the predicted classes from the decision tree
#'
#' @param dataset Data frame on which we want to make a model
#' @param target_var Dependent variable 
#'
#' @return return decision tree
#' @export
model_data <- function(dataset, target_var){
  
  dt_model<- rpart(y ~ ., data = dataset )
  
  dt_model
  
  
}
