#' Cleaning function
#' 
#' blabla
#'
#' @param filename character, filename
#' @param target_var character, columnname of dataframe which acts as the target variable 
#'
#' @return data.frame, excluding columns with too many NAs
#' @export
#'
#' @examples
clean_data <- function(filename, target_var) {
  data <- read_csv2(filename)
  
  target_df <- data %>% select(target_var)
  others_df <- data %>% select(-target_var)
  
  if any(is.na(target_df[[1]])) stop("Target Var should not include any NAs")
  
  na_per <- lapply(others_df, function(x) mean(is.na(x))) %>% unlist
  
  cols_nas_too_high <- which(na_per > 0.5)
  
  if (length(cols_nas_too_high) > 0) warning(paste0("Columns", paste(colnames(others_df[cols_nas_too_high]), collapse = ","), "have too many NAs"))
  
  bind_cols(target_df, others_df[, -cols_nas_too_high] )
}