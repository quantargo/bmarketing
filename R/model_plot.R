#' Plot the tree and respective nodes
#'
#' @param dt_model decisin tree model
#'
#' @return
#' @export
#'
#' @examples
model_plot <- function(dt_model) {
  rpart.plot(dt_model)

}

