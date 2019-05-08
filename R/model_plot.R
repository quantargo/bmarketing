#' Plot the tree and respective nodes
#'
#' @param dt_model randomForest, received by \code{link{model_data}}
#'
#' @export
#'
#' @importFrom rpart.plot rpart.plot
model_plot <- function(dt_model) {
  rpart.plot(dt_model)
}

