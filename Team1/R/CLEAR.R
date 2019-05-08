# A quick check:
# If newdata has same number of observation that implies no NA value present
# is.na(bmarketing)
newdata <- na.omit(bmarketing)
nrow(newdata)==nrow(bmarketing)

#A deep check for a particular column let say age
if(length(which(is.na(bmarketing$y)==TRUE)>0)){
  print("Missing Value found in the specified column")
} else{
  print("All okay: No Missing Value found in the specified column")
}