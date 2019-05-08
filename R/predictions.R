#' Predictions.
#'
#' \code{predictions} returns predictions.
#'
#' @param dt_model model
#' @param bmarketing data
#' @examples
#' data("bmarketing")
#' dt_model <- model(input_data = bmarketing,target_name="y")
#' predictions(dt_model, bmarketing)
#' @export

predictions <- function(dt_model, bmarketing)
{
  predict(dt_model, bmarketing, type = "class")
}
