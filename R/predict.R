#'Function to model predict
#'
#'
#'
#'
#'@param dataset Basic object like \code{numeric, char, factor,boolean, NULL}
#'
#'@param dt_model Basic object like \code{object}
#'
#'@keywords model, decision tree, prediction
#'
#'@import rpart.plot 
#'@import rpart 
#'@import tidyverse
#'
#'@export model_pred
#'
#'@examples
#'model_pred(bmarketing, model)
#'
#'

#prediction function
model_pred <- function(dataset, dt_model) {
  predict(dt_model, dataset, type = "class") 
}
