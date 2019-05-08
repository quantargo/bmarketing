# Data Transformation
#' Log transformation and factor transformation into numeric variables (and vice versa) as necessary.
#'
#' This function applies logarithm on the sent values and transforms numerical data to categories and vice versa
#' In case of null values, these are replaced with the mean of the interval for numerical data.
transform_log <- function(dataset) {

  # Taking care of missing data & log
  dataset$age <- ifelse(is.na(dataset$age),
                     ave(dataset$age, FUN = function(x) mean(x, na.rm = TRUE)),
                     dataset$age)
  dataset$age <- log(dataset$age)
  dataset$duration <- ifelse(is.na(dataset$duration),
                       ave(dataset$duration, FUN = function(x) mean(x, na.rm = TRUE)),
                       dataset$duration)
  dataset$duration <- log(dataset$duration)
  dataset$cons.price.idx <- ifelse(is.na(dataset$cons.price.idx),
                            ave(dataset$cons.price.idx, FUN = function(x) mean(x, na.rm = TRUE)),
                            dataset$cons.price.idx)
  dataset$cons.price.idx <- log(dataset$cons.price.idx)
  dataset$nr.employed <- ifelse(is.na(dataset$nr.employed),
                                  ave(dataset$nr.employed, FUN = function(x) mean(x, na.rm = TRUE)),
                                  dataset$nr.employed)
  dataset$nr.employed <- log(dataset$nr.employed)
  dataset$euribor3m <- ifelse(is.na(dataset$euribor3m),
                               ave(dataset$euribor3m, FUN = function(x) mean(x, na.rm = TRUE)),
                               dataset$euribor3m)
  dataset$euribor3m <- log(dataset$euribor3m)

  # Encoding categorical data
  dataset$job <- as.numeric(dataset$job)
  dataset$marital <- as.numeric(dataset$marital)
  dataset$education <- as.numeric(dataset$education)
  dataset$default <- as.numeric(dataset$default)
  dataset$housing <- as.numeric(dataset$housing)
  dataset$loan <- as.numeric(dataset$loan)
  dataset$contact <- as.numeric(dataset$contact)
  dataset$month <- as.numeric(dataset$month)
  dataset$day_of_week <- as.numeric(dataset$day_of_week)
  dataset$poutcome <- as.numeric(dataset$poutcome)
  dataset$y <- as.numeric(dataset$y)
  return(dataset)
}
