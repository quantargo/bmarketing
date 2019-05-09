#'Function to make neccessary transformation of data
#'
#'
#'
#'
#'@param x Basic object like \code{numeric}
#'@param f Basic object like \code{factor}
#'
#'@keywords log , number2factor
#'
#'@import
#'
#'@examples
#'logaritmic(bmarketing$age)
#'logaritmic(bmarketing$duration)
#'intonum(bmarketing$poutcome)
#'intonum(bmarketing$euribor3m)
#'


#################Transform numeric variables using the log #################

logaritmic <- function(x) {
  
x<-log(x)
  
}


#################Transform factors into numeric variables (and vice versa) as necessary#################

intonum<-function(f) {
  
f <- as.numeric(as.character(f))

}
