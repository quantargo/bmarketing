#' translog
#'
#' A simple log transformation
#'
#' @param x A numeric vector
#' 
#' @examples
#' transform_log(exp(rnorm(7)))
#' 
#' @export
translog<-function(x){
    if ( !is.numeric(x) ) stop("Input must be numeric!")
    if ( any(x<0) ) stop("Input must not be negative!")
    x <- log(x)
}

#' trans
#'
#' A class transformation, wich converts numeric to factor and factor to numeric
#'
#' @param var A numeric or factor data
#' 
#' @export
trans <- function(var){
    if (is.numeric(var)) v <- as.factor(var)
    if (is.factor(var)) v <- as.numeric(as.character(var))
    var<-v
}