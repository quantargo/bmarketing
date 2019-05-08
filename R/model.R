#'Function to model
#'
#'
#'
#'
#'@param dataset Basic object like \code{numeric, char, factor,boolean, NULL}
#'
#'@param target Basic object like \code{boolean}
#'
#'@keywords model, decision tree,
#'
#'@import rpart.plot, rpart, tidyverse
#'
#'@examples
#'model(bmarketing, bmarketing$y)
#'
#'

# model function with 2 arguments: target and dataset 
model <- function(dataset, target) {
  rpart(target ~ ., data = dataset) 
}
