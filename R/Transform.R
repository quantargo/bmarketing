#' Log-Tranforms input data for easy model development\cr
#' 
#' If data is numeric and negative \cr
#' AND if data appears as non-normal with the shapiro test\cr
#' the function performs a log transformation\cr
#' 
#' @param input dataframe
#' @examples
#' @export
#' 


#todos
#function should give warning is a variable was log transformed
#log transformation should be optional

transform <- function(input) {
  output <- as.data.frame(lapply(input, function(x) {
    if(is.numeric(x) && min(x)>0) {
      xshapiro <- shapiro.test(x)
      if(xshapiro$p.value <.05) { 
        x<-log(x)
      }}
    x  
  }))
  output

}




