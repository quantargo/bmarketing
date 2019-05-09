#' Reports model's classification accuracy measures 
#'
#' @param \code{data} data.frame used for model fitting
#' @param \code{y} name of the target variable (quoted character)
#' @param \code{modelType} string, name of the requested model type: either 'Logistic' or 'DecisionTree'
#' @param \code{explVars} either NULL or character vector containing list of explanatory variables 
#' @return Return the objectum of the model
#' @examples
#' df <- data.frame(y = c(0,1,1,0), a = c('a', 'b', 'c', 'a'), b = c(12,121,11,12))
#' varList <- c('a','b')
#' results <- fitModel(data = df, y = 'y', modelType = 'Logistic', explVars = varList)
#' @export
#' 

fitModel <- function(data, y, modelType, explVars = NULL) {

  if( !(modelType %in% c("Logistic", "DecisionTree")) ){
    stop("Unknown model type")
  }
  
  # Concatenates the model formula 
  if( is.null(explVars) ){
    modelFormula <- paste(y, "~ .")
  } else {
    modelFormula <- paste(y, "~", paste(explVars, collapse = "+"))
  }
  
  # Which model is requested?
  if( modelType == "DecisionTree" ){
    fit <- rpart(as.formula(modelFormula), data = data)
  } else {     
    fit <- glm(as.formula(modelFormula), data = data, family = "binomial")
  }  
}

