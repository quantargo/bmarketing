#' model_accuracy
#'
#' The function calculates accuracy (as a share of correctly classified observations and total observations), confusion matrix of a classification model
#' , sensitivity and specificity. For further reference to confusion matrix, sensitivity and specificity please see \url{https://en.wikipedia.org/wiki/Confusion_matrix}
#' , respective \url{https://en.wikipedia.org/wiki/Sensitivity_and_specificity}.
#' 
#' @param real a vector of realized observations 
#' @param pred a vector of corresponding predictions
#' @param chosenvar a string/numeric which choose for which class sensitivity will be calculated
#' @return \code{accuracy} ... a number
#' @return \code{confusion_matrix} ... a matrix
#' @return \code{sensitivity} ... a number
#' @return \code{specificity} ... a number
#' @examples
#' example_real=c(1,2,3,1,2,3,1,2,3) # a vector of realized observations
#' example_pred=c(1,2,3,1,2,3,2,2,2) # a vector of predictions
#' example_chosenvar=2
#' model_accuracy(example_real,example_pred,example_chosenvar)
#' @export

model_accuracy <- function(real,pred,chosenvar){
  
  #Tests if input is correct
  if(length(which(!(unique(pred) %in% unique(real))))>0) stop('Predictions attain at least one value, which is not in realized data.')
  if(length(real)!=length(pred)) stop('Different length of input vectors.')
  if(any(is.na(real))==TRUE) stop('There is at least one NA in vector of realized data.')
  if(any(is.na(pred))==TRUE) stop('There is at least one NA in vector of predicted data.')
  
  
  ## Calculate the accuracy as a percentage of correctly predicted (classificated) observations.
  acc_perc=mean(real == pred)
  
  # Calculate confusion matrix.
  confusion_matrix=table(real,pred)  
  
  chosencol0<-colnames(confusion_matrix)==chosenvar
  chosencol=which(chosencol0==TRUE)
  
  
  #Calculate sensitivity and specificity
  truepos<-sum(confusion_matrix[chosencol,chosencol])
  falseneg<-sum(confusion_matrix[chosencol,-chosencol])
  trueneg=sum(confusion_matrix[-chosencol,-chosencol])
  falsepos=sum(confusion_matrix[-chosencol,chosencol])
  
  
  sensitivity<-truepos/(truepos+falseneg)
  specificity<-trueneg/(trueneg + falsepos)
  
  #put results together
  result<-list(acc_perc,confusion_matrix,sensitivity,specificity)
  names(result) <-c('accuracy','confusion_matrix','sensitivity','specificity')
  
  if(acc_perc<0.7) warning('Accuracy is below 70%.')
  
  return(result)
  
}