#' Tranform data 
#' 
#' 1. Changes factor columns to numeric, if possible
#' 2. Apply mean-impute to user defined columns
#' 3. Apply log to user defined columns
#' 4. Apply normalization to user defined columns
#'
#' @param cols_impute character
#' @param cols_log character
#' @param cols_normalize character
#' @param df data.frame, recveived by \code{\link{clean_data}}
#'
#' @return data.frame
#' 
#' @importFrom dplyr mutate_if mutate_at
#' @importFrom readr parse_double
#' 
#' @export
transform_data <- function(df, cols_impute = NULL, cols_log = NULL, cols_normalize = NULL) {
  
  res_df <- mutate_if(df, is.factor, readr::parse_double)
  
  if (length(cols_impute) > 0) res_df <- mutate_at(res_df, cols_impute, impute_transform)
  if (length(cols_log) > 0) res_df <- mutate_at(res_df, cols_log, log_transform)
  if (length(cols_normalize) > 0) res_df <- mutate_at(res_df, cols_normalize, normalize_transform)

  res_df
}

impute_transform <- function(x) {
  replace(x, is.na(x), mean(x, na.rm = TRUE))
}

normalize_transform <- function(x) {
  (x - mean(x, na.rm = TRUE)) / sd(x, na.rm = TRUE)
}

log_transform<- function(x) {
  log(x)
}