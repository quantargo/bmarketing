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
#'@import rpart tidyverse
#'
#'@examples
#'model_pred(bmarketing, model)
#'
#'

#prediction function
model_pred <- function(dataset, dt_model) {
  predict(dt_model, dataset, type = "class") 
}
