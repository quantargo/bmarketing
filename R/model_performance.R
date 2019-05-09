#' Calculate the accuracy of the model
#'
#' @param data character vector, real results
#' @param prediction character vector, predicted results
#'
#' @return list, accuracy measures out of confusion matrix
#' @export
model_performance <- function(data, prediction) {
  cm <- table(data, prediction) 
  list(
    accuracy = diag(cm) / sum(cm),
    sensitivity = cm[1,1] / sum(cm[, 1]),
    specificity = cm[2,2] / sum(cm[, 2])
  )
}