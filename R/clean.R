#' Cleanin Data
#'
#' \code{clean} returns a clean data set.
#'
#' @param data A data.frame containing a target variable named y
#' @param target_name A character containing the name of the target variable
#' @return A cleaned data.frame. 
#'
#' This means:
#' 
#'   - return an error if the target variable contains any missing values (NA’s).
#'   - Give clear warnings for all other variables which contain NA’s.
#'   - Remove any columns (and report as warning) which contain more than 50% NA’s.
#'   
#' @examples
#' data(bmarketing)
#' clean(bmarketing,"y")
#' @export

clean<-function(data,target_name){
  
  if(sum(is.na(data[,target_name]))>0) stop("Target variable y contains missing values (NA's)")
  
  for(col in names(data)){
    
    if(sum(is.na(data[,col]))>0){
      
      if(sum(is.na(data[,col]))/nrow(data) > 0.5){
        
        data <- data[,!(names(data)==col)]
        warning(paste0("Variable ",col," removed due to more than 50% NA's"))
       
      }else{
        warning(paste0("Variable ",col," contains NA's"))
      }
      
    }
    
  }
  
  return(data)
  
}