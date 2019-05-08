

bmarketing <- read.csv2("bmarketing.csv")



#################Transform numeric variables using the log #################

logaritmic <- function(x) {
  
x<-log(x)
  
}

#################Transform factors into numeric variables (and vice versa) as necessary#################

intonum<-factor(x) {
  
x <- as.numeric(as.character(x))

}