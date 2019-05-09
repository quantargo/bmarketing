#' logit
#' @description fits the logit model based on
#' 
#' @param target the name of the target variable from the input data (string) 
#' @param udata Input data for the model.
#' 
#' @return logit model.
#' 
#' @importFrom stats glm
#' 
#' @export
logit<-function(udata,target){
  glm(as.formula(paste(target,"~.")) , data=udata,family = "binomial") 
}


