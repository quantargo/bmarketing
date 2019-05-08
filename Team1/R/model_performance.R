model_performance <- function(dataset, target, predictions) {
  ## Compute the accuracy
  mean(dataset$target == predictions)
  # Lets look at the confusion matrix
  table(predictions, dataset$target)
}
