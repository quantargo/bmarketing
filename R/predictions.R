#' Predictions.
#'
#' \code{predictions} returns predictions.
#'
#'
#' @param model.
#' @param data.
#' @examples
#' predictions(model, data)
#' @export

predictions <- function(dt_model, bmarketing)
{
  predict(dt_model, bmarketing, type = "class")
}
