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

 


if(length(which(is.na(bmarketing$y)==TRUE)>length(bmarketing$y)/2)){
  print("Missing Value found in the specified column")
} else{
  print("All okay: No Missing Value found in the specified column")
}
  

