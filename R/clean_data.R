#' Cleaning function
#' 
#' Data is read in from a csv file using \code{\link{read_csv2}}
#'
#' @param df data.frame, data to be cleaned
#' @param target_var character, columnname of dataframe which acts as the target variable 
#' @param ... args forwarded to \code{\link{read_csv2}}. Hint: You can edit the import column type by the col_types argument.
#' @param na_threshold numeric, if NAs within a column are greater than the treshold given, this columns will be excluded
#'
#' @return data.frame, excluding columns with too many NAs
#' 
#' @importFrom readr read_csv2
#' 
#' @export
#' @examples
#' \dontrun{
#' data <- import_data("/data/bmarketing2.csv")
#' clean_data(data, target_var = "Y")
#' }
clean_data <- function(df, target_var, na_threshold = 0.5, ...) {

  stopifnot(nrow(df) > 0)
  stopifnot(target_var %in% colnames(df))
  stopifnot(ncol(df) > 1)
  
  ## return an error if the target variable contains any missing values (NA’s).
  if (any(is.na(df[[target_var]]))) stop("Target Var should not include any NAs")
  
  exclude_index <- vapply(df, function(x) mean(is.na(x)), numeric(1)) > na_threshold
  
  ## give clear warnings for all other variables which contain NA’s.
  if (sum(exclude_index) > 0) warning(paste("Column(s)", paste(colnames(df[exclude_index]), collapse = ", "), "have too many NAs and will be excluded"))
  
  df[, !exclude_index]
}