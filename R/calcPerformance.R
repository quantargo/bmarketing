#' Reports model's classification accuracy measures 
#'
#' @param \code{y} Target variable (class or numeric)
#' @param \code{y_pred} Target variable (class or numeric)
#' @return Gives back a classification report containing the Confusion Matrix, Sensitivity, Specificity, Precision and Accuracy
#' @examples
#' calcPerformance(y = bmarketing$y, y_pred = predictions)
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

  print( "Confusion matrix")
  print( cm )
  
  print( paste( "True Positive Rate (Sensitivity):", round( 100 * cm[2,2] / ( cm[2,2] + cm[2,1]), 3 ), "%" ) )
  print( paste( "True Negative Rate (Specificity):", round( 100 * cm[1,1] / ( cm[1,1] + cm[1,2]), 3 ), "%" ) )
  print( paste( "Precision:"                       , round( 100 * cm[2,2] / ( cm[2,2] + cm[1,2]), 3 ), "%" ) )
  print( paste( "Accuracy:"                        , round( 100 * mean(y == y_pred)             , 3 ), "%" ) )
  
} 

