#' Tranform data 
#' 
#' 1. Changes factor columns to numeric, if possible
#' 2. Apply log to user defined columns
#'
#' @param df data.frame, recveived by \code{\link{clean_data}}
#' @param cols character vector, columns to be log-transformed
#'
#' @return data.frame
#' 
#' @importFrom dplyr mutate_if mutate_at
#' @importFrom readr parse_double
#' 
#' @export
transform_data <- function(df, cols) {
  mutate_at(mutate_if(df, is.factor, readr::parse_double), cols, log)
}