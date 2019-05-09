#' Predicts output from DecisitonTree or Logistic model
#'
#' @param data dataset to be used for prediction
#' @param model2Predict model which the predictions are based on
#' @param modelType type of the model
#' @return Gives back predictions
#' @examples
#' y_example      = c(0,1,1,0)
#' y_pred_example = c(1,1,1,0)
#' @export
#' 

predictByModel <- function(data, model2Predict, modelType){

  if( !(modelType %in% c("Logistic", "DecisionTree")) ){
    stop("Unknown model type")
  }

  if( modelType == "Logistic"){
    pred <- as.factor( (predict(object = model2Predict, data = data, type = "response") > 0.5) * 1 ) 
    levels(pred) <- c("no", "yes")
  } else {
    pred <- predict( object = model2Predict, data = data, type = "class")
  }
  
  return(pred)
}


