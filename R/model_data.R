#' Returns the predicted classes from the decision tree
#'
#' @param dataset Data frame on which we want to make a model
#' @param target_var Dependent variable 
#'
#' @return return decision tree
#' 
#' @importFrom rpart rpart
#' 
#' @export
#'
#' @examples
#' 
#'data("bmarketing")
#'model_data <- model(dataset = bmarketing, target_var="y")

model_data <- function(dataset, target_var){
  rpart(as.formula(paste(target_var, "~ .")), data = dataset, model = TRUE)
}
