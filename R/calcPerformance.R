#' Reports model's classification accuracy measures 
#'
#' @param \code{y} Target variable (class or numeric)
#' @param \code{y_pred} Target variable (class or numeric)
#' @return Gives back a classification report containing the Confusion Matrix, Sensitivity, Specificity, Precision and Accuracy, and a list containing the results
#' @examples
#' results <- calcPerformance(y = bmarketing$y, y_pred = predictions)
#' @export
#' 
calcPerformance <- function(y, y_pred) {

  if( length(y) != length(y_pred) ){
    stop("y and y_pred do not have the same number of observations")
  }
  
  if( any(is.na(y)) ){
    stop("y contains value NA(s)")
  }  

  if( any(is.na(y_pred)) ){
    stop("y_pred contains value NA(s)")
  }  

  cm <- table(y, y_pred)
  
  res <- data.frame(test = c("TPR", 
                             "TNR",
                             "Precision",
                             "Accuracy"),
                    
                     value = c(  round( 100 * cm[2,2] / ( cm[2,2] + cm[2,1]), 3 ),
                                 round( 100 * cm[1,1] / ( cm[1,1] + cm[1,2]), 3 ),
                                 round( 100 * cm[2,2] / ( cm[2,2] + cm[1,2]), 3 ),
                                 round( 100 * mean(y == y_pred)             , 3 ))
                     )    

  
  print( "Confusion matrix")
  print( cm )
  print("")
  print( paste( "True Positive Rate (Sensitivity):", res[1, 2], "%" ) )
  print( paste( "True Negative Rate (Specificity):", res[2, 2], "%" ) )
  print( paste( "Precision:"                       , res[3, 2], "%" ) )
  print( paste( "Accuracy:"                        , res[4, 2], "%" ) )
  
  return(list(cm, res))
} 

