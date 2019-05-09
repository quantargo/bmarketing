#' Calculate the accuracy of the model
#'
#' @param target vector, target values
#' @param prediction vector, predicted values
#'
#' @return list, measures out of confusion matrix: accuracy, sensitivity, specificity. \url{https://en.wikipedia.org/wiki/Confusion_matrix}
#' 
#' @examples 
#' target <- sample(c(0, 1), 100, replace = TRUE)
#' prediction <- sample(c(0, 1), 100, replace = TRUE)
#' model_performance(target, prediction)
#' 
#' @export
model_performance <- function(target, prediction) {
  
  stopifnot(length(target) == length(prediction))
  
  cm <- table(target, prediction) 
  
  list(
    accuracy = sum(diag(cm)) / sum(cm),
    sensitivity = cm[1,1] / sum(cm[, 1]),
    specificity = cm[2,2] / sum(cm[, 2])
  )
}