#' Predictions.
#'
#' \code{predictions} returns predictions.
#'
#' @param dt_model model
#' @param data data the model was generated with
#' @examples
#' data("bmarketing")
#' dt_model <- model(input_data = bmarketing,target_name="y")
#' predictions(dt_model, bmarketing)
#' @export

predictions <- function(dt_model, data)
{
  predict(dt_model, data, type = "class")
}
