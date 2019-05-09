#' dtree
#' @description fits the decision tree model based on
#' @param target target variable from the input data. 
#' @param udata Input data for the model.
#' @return A decision tree model.
#' @importFrom rpart rpart
#' @examples
#' dtree(mytarget,mydata)
#' 
#' @export

dtree <- function(target,udata) {  
    dt_model<-rpart(target ~ ., data = udata)
    dt_model
}


#' dtreesummary
#' @description returns the summary of the chosen model
#' @param dt_model model that we want to summarize
#' @return a summary. :)
#' @examples
#' dtreesummary(mymodel)
#' 
#' @export
dtreesummary<-function(dt_model){
  summary(dt_model)
}

#' dtreeplot
#' @description returns the plot of the chosen decision tree model
#' @param dt_model model that we want to plot
#' @return a plot. :)
#' @examples
#' dtreeplot(mymodel)
#' 
#' @export
dtreeplot<-function(dt_model) {
  rpart.plot(dt_model)
}

#' dtreepredict
#' @description returns the prediction 
#' @param dt_model model that we want to use to generate our predictions
#' @param predictdata data that we want to score
#' @return predictions
#' @examples
#' dtreepredict(mymodel,mydata)
#' 
#' @export
dtreepredict<-function(dt_model,predictdata){

  predictions <- predict(dt_model, predictdata, type = "class")
  predictions
}


#' dtreeperf
#' @description checks model accuracy
#' @param target actual target in our data
#' @param predictions predicted target
#' @return accuracy
#' @examples
#' dtreepredict(mytarget,mypredictions)
#' 
#' @export
dtreeperf<-function(target,predictions){
  accuracy<-mean(target == predictions)
  accuracy
}



