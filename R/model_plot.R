#' Plot the tree and respective nodes
#'
#' @param dt_model randomForest, received by \code{link{model_data}}
#'
#' @export
#'
#' @example You can plot it by invoke function model_plot(dt_model)
#' @importFrom rpart.plot rpart.plot
model_plot <- function(dt_model) {
  rpart.plot(dt_model)
}

