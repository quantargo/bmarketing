#' model_accuracy
#'
#' The function calculates accuracy (as a share of correctly classified observations and total observations) and confusion matrix of a classification model. For further reference to confusion matrix please see \url{https://en.wikipedia.org/wiki/Confusion_matrix}.
#' @param real a vector of realized observations 
#' @param pred a vector of corresponding predictions
#' @return \code{accuracy} ... a number
#' @return \code{confusion_matrix} ... a matrix
#' @examples
#' example_real=c(1,2,3,1,2,3,1,2,3) # a vector of realized observations
#' example_pred=c(1,2,3,1,2,3,2,2,2) # a vector of predictions
#' model_accuracy(example_real,example_pred)
#' @export

model_accuracy <- function(real,pred){
  
  #Tests if input is correct
  if(length(which(!(unique(pred) %in% unique(real))))>0) stop('Predictions attain at least one value, which is not in realized data.')
  if(length(real)!=length(pred)) stop('Different length of input vectors.')
  if(any(is.na(real))==TRUE) stop('There is at least one NA in vector of realized data.')
  if(any(is.na(pred))==TRUE) stop('There is at least one NA in vector of predicted data.')
  
  
  ## Calculate the accuracy as a percentage of correctly predicted (classificated) observations.
  acc_perc=mean(real == pred)
  
  # Calculate confusion matrix.
  confusion_matrix=table(real,pred)  
  
  #put results together
  result<-list(acc_perc,confusion_matrix)
  names(result) <-c('accuracy','confusion_matrix')
  
  if(acc_perc<0.7) warning('Accuracy is below 70%.')
  
  return(result)
  
}