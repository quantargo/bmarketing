#' Cleaning function
#' 
#' Data is read in from a csv file using \code{\link{readr::read_csv2}}
#'
#' @param filename character, filename
#' @param target_var character, columnname of dataframe which acts as the target variable 
#' @param ... args forwarded to \code{\link{readr::read_csv2}}
#'
#' @return data.frame, excluding columns with too many NAs
#' @export
clean_data <- function(filename, target_var, na_threshold = 0.5, ...) {
  data <- read_csv2(filename, ...)
  
  stopifnot(nrow(data) > 0)
  stopifnot(target_var %in% colnames(data))
  stopifnot(ncol(data) > 1)
  
  ## return an error if the target variable contains any missing values (NA’s).
  if (any(is.na(data[[target_var]]))) stop("Target Var should not include any NAs")
  
  exclude_index <- vapply(data, function(x) mean(is.na(x)), numeric(1)) > na_threshold
  
  ## give clear warnings for all other variables which contain NA’s.
  if (sum(check_index) > 0) warning(paste("Column(s)", paste(colnames(data[check_index]), collapse = ", "), "have too many NAs and will be excluded"))
  
  data[, !exclude_index]
}