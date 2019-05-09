#' dtree
#' @description fits the decision tree model based on given parameters
#' @param input_data input data for the model.
#' @param target_name target variable from the input data. 
#' @return A decision tree model.
#' @importFrom rpart rpart
#' 
#' @export

dtree <- function(input_data,target_name) {  
  library(rpart)
  library(rpart.plot)
  
  dt_model<- rpart(y ~ ., data = input_data)
  rpart.plot(dt_model)
  return (dt_model)
}

#' dtreesummary
#' @description returns the summary of the chosen model
#' @param dt_model model that we want to summarize
#' @return a summary. :)
#' 
#' @export
#' 
dtreesummary<-function(dt_model){
  summary(dt_model)
}

#' dtreeplot
#' @description returns the plot of the chosen decision tree model
#' @param dt_model model that we want to plot
#' @return a plot. :)
#' 
#' @export
#' 
dtreeplot<-function(dt_model) {
  rpart.plot(dt_model)
}

#' dtreepredict
#' @description returns the prediction 
#' @param dt_model model that we want to use to generate our predictions
#' @param predictdata data that we want to score
#' @return predictions
#' 
#' @export
#' 
dtreepredict<-function(dt_model,predictdata){

  predictions <- predict(dt_model, predictdata, type = "class")
  predictions
}


#' dtreeperf
#' @description checks model accuracy
#' @param target actual target in our data
#' @param predictions predicted target
#' @return accuracy
#' 
#' @export
#' 
dtreeperf<-function(target,predictions){
  accuracy<-mean(target == predictions)
  accuracy
}



