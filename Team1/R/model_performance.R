<<<<<<< HEAD
model_performance <- function(target, predictions) {
=======
model_performance <- function(dataset, target, predictions) {
>>>>>>> 88f8363ad0c8b6f1e6ff90b7ce5f480533d994ba
  ## Compute the accuracy
  mean(target == predictions)
  # Lets look at the confusion matrix
  table(predictions, target)
}
