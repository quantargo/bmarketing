#' Clean function.
#' 
#' Cleans a dataset: \cr
#' - return an error if the target variable contains any missing values (NA’s). \cr
#' - Give clear warnings for all other variables which contain NA’s. \cr
#' - Remove any columns (and report as warning) which contain more than 50% NA’s
#' 
#' @param x A dataframe
#' @param t The name of the target variable column of dataframe x
#' @examples
#' @export
#' 



clean <- function(x, t) {
  if (is.data.frame(x)==FALSE) {stop("Parameter x must be a dataframe")}
  if (is.na(match(t, names(x)))==TRUE) {stop("Parameter t must be the name (string) of a column in the dataframe")}
  if (any(is.na(x$t))==TRUE) {stop("The target variabe t contais NA values")}
  if (any(is.na(x[ , -which(colnames(x)==t)]))==TRUE) {warning("Explanatory variables contain NA values")}
  count_na <- sapply(x, function(y) sum(length(which(is.na(y))))/length(y))
  cols_to_remove <- names(count_na[count_na > 0.5])
  if (length(cols_to_remove)==0) {return(x)}
  else {
    warning(paste("The following columns are removed: ", cols_to_remove))
    return(x[,-which(colnames(x)==cols_to_remove)])
    }
}