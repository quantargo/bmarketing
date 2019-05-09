# Data Transformation
#' Log transformation and factor transformation into numeric variables (and vice versa) as necessary.
#' The function needs DescTools library installed
#' 
#' \code{transform} transforms the sent data to log (for numeric) or factor transformation into numeric, as necessary.
#' 
#' @param data A data.frame containing the target variable
#' @param column The column, with double quotation marks which needs to be transformed
#' @param option The option to replace NA's by the mean or by modus (1 - replace NA's - default, 0 - no replacement)
#' @return The column from the data frame that is returned is the transformed data
#'   
#' @examples
#' transform(bmarketing, "age", 1)
#' @export

transform <- function(data, column, option = 1) {
  
  if(is.integer(data[,column]) || is.numeric(data[,column])) {
  # Taking care of missing data & log
    if (option == 1) {
      Mean <- mean(data[,column], na.rm = TRUE)
      y <- ifelse(is.na(data[,column]), Mean, data[,column])  
    }
    if (option == 0) {
      y <- data[,column]
    }
    
    if(min(y, na.rm = TRUE) >=0)
      y <- log(y)
  }
  
  # Encoding categorical data
  if(is.factor(data[,column])) {
    y <- as.numeric(data[,column])
    if (option == 1) {
      y <- ifelse(is.na(y), DescTools::Mode(y), y)
    }
  }
  return(y)
}
