#'Function to model performance
#'
#'
#'
#'
#'@param target Basic object like \code{boolean}
#'
#'@param predictions Basic object like \code{boolean}
#'
#'@keywords model, decision tree, accuracy
#'
#'@import rpart 
#'@import tidyverse
#'
#'@export model_performance
#'
#'@examples
#'model_performance(target, predictions)
#'
#'

model_performance <- function(target, predictions) {
  ## Compute the accuracy
  mean(target == predictions)
  # Lets look at the confusion matrix
  table(predictions, target)
}
