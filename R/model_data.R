#' Returns the predicted classes from the decision tree
#'
#' @param df data.frame on which we want to make a model
#' @param target_var character, Dependent variable 
#'
#' @return return decision tree model
#' 
#' @importFrom rpart rpart
#' 
#' @export
#'
#' @examples
#' \dontrun{
#' model_data(df, target_var="Y")
#' }
model_data <- function(df, target_var){
  rpart(as.formula(paste(target_var, "~ .")), data = df, model = TRUE)
}
