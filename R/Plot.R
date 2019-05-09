
#'Function to histogram
#'
#'
#'
#'
#'@param data Basic object like \code{numeric, char, factor,boolean, NULL}
#'@param column Basic object like \code{numeric}
#'
#'@keywords plot
#'
#'@import rpart.plot 
#'@import rpart 
#'@import tidyverse
#'
#'@export histplot
#'@export treeplot
#'
#'@examples
#'histplot(data, column)
#'
#'


histplot<-function(data, column){
  
  data %>% 
    ggplot() + geom_histogram(aes(column), bins = 30) + 
    geom_vline(aes(xintercept= median(column)), color = "red")
}

#trreplot

treeplot <- function(model){
  
  rpart.plot(model)
  
}