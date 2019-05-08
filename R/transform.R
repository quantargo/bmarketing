translog<-function(var){
    if ( !is.numeric(x) ) stop("Input must be numeric!")
    if ( any(x<0) ) stop("Input must not be negative!")
    var <- log(var)
}

trans<-function(var){
    if (is.numeric(var)) v <- as.factor(var)
    if (is.factor(var)) v <- as.numeric(as.character(var))
    var<-v
}