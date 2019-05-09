#' logit
#' @description fits the logit model based on
#' 
#' @param target target variable from the input data. 
#' @param udata Input data for the model.
#' 
#' @return logit model.
#' 
#' @importFrom stats glm
#' 
#' @export
logit<-function(udata,target){
  glm(target~., data=udata,family = "binomial") 
}


