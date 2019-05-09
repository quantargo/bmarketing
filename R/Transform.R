#'Function to make neccessary transformation of data
#'
#'
#'
#'
#'@param x Basic object like \code{numeric}
#'@param data Basic object like \code{numeric, boolean, character, NULL, factor}
#'@param column Basic object like \code{factor}
#'
#'@keywords log , number2factor
#'
#'@import rpart.plot 
#'@import rpart 
#'@import tidyverse
#'
#'@export logaritmic
#'@export intonum
#'
#'@examples
#'bmarketing$age<-logaritmic(bmarketing$age)
#'bmarketing$duration<-logaritmic(bmarketing$duration)
#'bmarketing$poutcome<-intonum(bmarketing$poutcome)
#'bmarketing$euribor3m<-intonum(bmarketing, bmarketing$euribor3m)
#'


#################Transform numeric variables using the log #################

logaritmic <- function(x) {
  
x<-log(x)
  
}


#################Transform factors into numeric variables (and vice versa) as necessary#################

intonum<-function(data, column) {
  
data$column <- as.numeric(as.character(column))


}
