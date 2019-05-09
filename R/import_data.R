#' Imports Data from a csv file
#'
#' @param filename character, filename
#' @param ... args, forward to read_csv function
#'
#' @return data.frame
#' @export
import_data_from_csv <- function(filename, ...) {
  suppressMessages(readr::read_csv(filename, ...))
}