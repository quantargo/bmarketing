#' Checking for NA values considering all the variables present in the dataset
#' 
#' @param ds dataframe object
#' 
#' 
#' @return 
#' Return an error message indicating how many columns have NAs present, in case there is any.

checkNA <- function( ds)
{

  # Check if any NA's are found in the whole dataset.
  newdata <- na.omit(ds)
  
  if( nrow(newdata)==nrow(ds) )
    print('No empty records found in the dataframe')
  else 
  print( cat('There are  ',nrow(ds)-nrow(newdata), 'columns having NAs' ))
}
 