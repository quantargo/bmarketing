

model_performance <- function(target, predictions) {
  ## Compute the accuracy
  mean(target == predictions)
  # Lets look at the confusion matrix
  table(predictions, target)
}
