# A quick check:
# If newdata has same number of observation that implies no NA value present
# is.na(bmarketing)

clear1 <- function(x) {
  newdata <- na.omit(x)
  nrow(newdata)==nrow(x)
}

x <- bmarketing
clear1(x)

#A deep check for a particular column let say age

clear2 <- function(w) {
  if(length(which(is.na(w)==TRUE)>0)){
    print("Missing Value found in the specified column")
  } 
  else{
    print("All okay: No Missing Value found in the specified column")
  }
}

w <- bmarketing$y
clear2(w)
