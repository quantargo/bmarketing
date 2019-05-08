#' Cleanin Data
#'
#' \code{clean} returns a clean data set.
#'
#' @param data A data.frame containing a target variable named y
#' @return A cleaned data.frame. 
#'
#' This means:
#' 
#'   - return an error if the target variable contains any missing values (NA’s).
#'   - Give clear warnings for all other variables which contain NA’s.
#'   - Remove any columns (and report as warning) which contain more than 50% NA’s.
#'   
#' @examples
#' clean(data)
#' @export

clean<-function(data){
  
  if(sum(is.na(data$y))>0) stop("Target variable y contains missing values (NA's)")
  
  for(col in names(data)){
    
    if(sum(is.na(data[,col]))>0){
      
      if(sum(is.na(data[,col]))/nrow(data) > 0.5){
        
        data <- subset(data ,remove = col)
        warning(paste0("Variable ",col," removed due to more than 50% NA's"))
       
      }else{
        warning(paste0("Variable ",col," contains NA's"))
      }
      
    }
    
  }
  
  return(data)
  
}