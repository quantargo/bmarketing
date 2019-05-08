transform <- function(input) {
  output <- as.data.frame(lapply(input, function(x) {
    
    #if(!is.numeric(x)) x <- as.numeric(as.character(x))
    if(is.numeric(x) && min(x)>0) {
      xshapiro <- shapiro.test(x)
      if(xshapiro$p.value <.05) { 
        x<-log(x)
      }}
    x  
  }))
  output
  #warning arról hogy mi lett transzformálva
  #optionálisan legyen csak a logtrafo
}




