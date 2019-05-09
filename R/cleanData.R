#' Checking the quality of data.
#' 
#' Check if Target variable for the model has NA values. 
#' It also checks all the variables for NAs and removes the column if more then half of the values are NAs.
#' 
#' @param ds dataframe object
#' @param targetVar name of the target variable of the dataframe \code ds
#' @param replaceNAs True or False, if you want to replace NAs with mean value.
#' 
#' @return 
#' Return the cleaned dataframe and prints warning messages in case there are any.
#' 
#' @export


cleanData <- function( ds, targetVar, replaceNAs=FALSE )
{
  
  #Firstly checking if the target Variable parameter actually exists inside the dataframe.
  if (any( colnames(ds)  ==  targetVar ) == FALSE)
    stop( paste(targetVar, "variable not part of the dataframe passed"))
  
  #Secondly checking if target variable contains any NA's values.
  if(length(which(is.na(ds$targetVar)==TRUE)>0)){
    stop("Missing Value found in the target column")
  } else{
    print("Target Variable looks clean. No NA values")
  }
  
  #Thirdly checking if there is any NA values inside the dataframe. / 
  # and replace iff replaceNAs=TRUE NAs with mean
  if(replaceNAs){
    for(i in 1:dim(ds)[2]){
      if(is.numeric(ds[,i])){
        ds[is.na(ds[,i]),i] <- mean(ds[,i], na.rm = TRUE)
        warning(paste(colnames(ds)[i],"has been imputed with mean values."))
      }else{
        ds[is.na(ds[,i]),i]<-"MISSING"
        warning(paste("For variable",colnames(ds)[i],"category MISSING was defined."))
      }
    }
  }else {
    checkNA(ds)

    #Forth, find which columns contain NAs and remove these columns in case more then half of the values
    #are NAs. 
    
    # flag[1:dim(ds)[2]]<-FALSE
    flag <- c(logical(dim(ds)[2]) )
    
    for (i in 1:dim(ds)[2])
    {
      
      if((nrow(ds)-nrow(na.omit(ds[i])))/nrow(ds)>0.5)
      {
        warning(paste(colnames(ds)[i],"has more than half NA's, and was excluded from the sample"));
        flag[i]<-TRUE   
      }
      if(flag[i]==FALSE && any(is.na(ds[i])))warning(paste(colnames(ds)[i],"has NA values!"))  
      
    } 
    
    
    ds<-ds[!flag]
    
    }
    
  #Return the cleaned dataframe.
  return(ds)
  
}