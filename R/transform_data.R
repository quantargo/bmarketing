#' Tranform data 
#' 
#' 1. Changes factor columns to numeric, if possible
#' 2. Apply log to user defined columns
#'
#' @param df data.frame, recveived by \code{\link{clean_data}}
#' @param cols character vector, columns to be log-transformed
#'
#' @return data.frame
#' @export
transform_data <- function(df, cols) {
  mutate_if(df, is.factor, readr::parse_double) %>% 
  mutate_at(df, cols, log)
}