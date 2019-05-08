#' Calculate the accuracy of the model
#'
#' @param data character vector, real results
#' @param prediction character vector, predicted results
#'
#' @return numeric, accuracy
#' @export
model_performance <- function(data, prediction) {
  mean(data == predictions)
}