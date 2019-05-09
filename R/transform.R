# Data Transformation
#' Log transformation and factor transformation into numeric variables (and vice versa) as necessary.
#'
#' \code{transform} transforms the sent data to log (for numeric) or factor transformation into numeric, as necessary.
#' 
#'
#' @param data A data.frame containing the target variable
#' @param column The column, with double quotation marks which needs to be transformed
#' @return The column from the data frame that is returned is the transformed data
#'   
#' @examples
#' transform(bmarketing, "AGE")
#' @export

transform <- function(data, column) {
  if(is.integer(data[,column]) || is.numeric(data[,column]))
  # Taking care of missing data & log
    Mean <- mean(data[,column], na.rm = TRUE)
    y <- ifelse(is.na(data[,column]), Mean, data[,column])  
    
    if(min(y, na.rm = TRUE) >=0)
      y <- log(y)
  
  # Encoding categorical data
  if(is.factor(data[,column]))
    y <- as.numeric(data[,column])

  return(y)
}
