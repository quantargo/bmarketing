

bmarketing <- read.csv2("bmarketing.csv")



#################transform numeric variables using the log #################

logaritmic <- function(x) {
  
log(x)
}

#################Transform factors into numeric variables (and vice versa) as necessary#################

bmarketing$euribor3m <- as.numeric(as.character(bmarketing$euribor3m))
bmarketing$cons.conf.idx <- as.numeric(as.character(bmarketing$cons.conf.idx))
bmarketing$emp.var.rate <- as.numeric(as.character(bmarketing$emp.var.rate))
bmarketing$cons.price.idx <- as.numeric(as.character(bmarketing$cons.price.idx))
bmarketing$nr.employed <- as.numeric(as.character(bmarketing$nr.employed))