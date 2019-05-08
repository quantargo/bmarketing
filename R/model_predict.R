#' Title
#' 
#'The main goal of linear regression is 
#'to predict an outcome value on the basis of one or multiple predictor variables.
#' 
#' @param dt_model, randomForest, received by \code{link{model_data}}
#' @param data df data.frame , received by \code{\link{clean_data}} 
#'
#' @return data df data.frame
model_predict <- function(dt_model, data) {
  predict(dt_model, data, type = "class")
}
