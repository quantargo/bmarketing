#'Function to clean data
#'
#'
#'
#'
#'@param data Basic object like \code{numeric,int,boolean,char}
#'@param target Basic object like \code{numeric,int,boolean,char}
#'
#'@keywords na.omit , nrow, length
#'
#'@import rpart
#'
#'@examples
#'clear1(bmarketing$y)
#'clear2(bmarketing$duration)
#'clear3(bmarketing$poutcome)
#
#'




# A quick check:
# If newdata has same number of observation that implies no NA value present
# is.na(bmarketing)

clear1 <- function(data) {
  newdata <- na.omit(data)
  if (nrow(newdata)==nrow(data)) {
    print("All okay: No Missing Value found")
  } 
  else{
    print("Error: Missing Values found")
  }
}



#A deep check for a particular column let say age

clear2 <- function(data,target) {
  if(length(which(is.na(data$target)==TRUE)>0)){
    print("Missing Value found in the specified column")
  } 
  else{
    print("All okay: No Missing Value found in the specified column")
  }
}

 
#Remove any columns (and report as warning) which contain more than 50% NA’s
clear3 <- function(data,target) {
if(length(which(is.na(data$target)==TRUE)>length(data$target)/2)){
  print("There are more than 50% of Missing Value in the specified column")
  data$target <- NULL
} else{
  print("All okay: There are no more than 50% of Missing Value in the specified column")
}
}

