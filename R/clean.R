#' Cleanin Data
#'
#' \code{sum} returns a clean data set.
#'
#' This is a generic function: methods can be defined for it directly
#' or via the \code{\link{Summary}} group generic. For this to work properly,
#' the arguments \code{...} should be unnamed, and dispatch is on the
#' first argument.
#'
#' @param data A data.frame
#' @return A cleaned data.frame. This means:#' 
#'   \item return an error if the target variable contains any missing values (NA’s).
#'   \item Give clear warnings for all other variables which contain NA’s.
#'   \item Remove any columns (and report as warning) which contain more than 50% NA’s.
#'   
#' @examples
#' clean(data)

clean<-function(data){
  
}