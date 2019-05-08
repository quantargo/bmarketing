#' predictions
#'
#' This function prepare predictions.
#'
#' @param 1 - model, 2 - data
#' @return predictions
#' @export

predictions <- function(dt_model, bmarketing)
{
  predict(dt_model, bmarketing, type = "class")
