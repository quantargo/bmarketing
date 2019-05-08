translog<-function(var){
  if (is.numeric(var)) var<-log(var)
}

trans<-function(var){
  if (is.numeric(var)) v<-as.factor(var)
  if (is.factor(var)) v<-as.numeric(as.character(var))
  var<-v
}