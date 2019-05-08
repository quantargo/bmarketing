
#histogram of plot


histplot<-function(data){
  
  data %>% 
    ggplot() + geom_histogram(aes(age), bins = 30) + 
    geom_vline(aes(xintercept= median(age)), color = "red")
}

#trreplot

treeplot <- function(model){
  
  rpart.plot(model)
  
}