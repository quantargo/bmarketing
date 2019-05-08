model_performance <- function(dataset, target) {
  ## Compute the accuracy
  mean(dataset$target == predictions)
  # Lets look at the confusion matrix
  table(predictions, dataset$target)
}
