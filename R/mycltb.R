#' mycltb
#'
#' @param n numerical vector of sample size
#' @param iter numerical vector of iteration size
#' @param p numerical vector of probabality value
#' @param ... numerical vectors
#'
#' @return graph
#' @export
#'
#' @examples
#' mycltb(n=4,iter=10000,p=0.3)
mycltb=function(n,iter,p=0.5,...){

  y=rbinom(n*iter,size=n,prob=p)

  data=matrix(y,nr=n,nc=iter,byrow=TRUE)

  w=apply(data,2,mean)

  param=hist(w,plot=FALSE)

  ymax=max(param$density)

  ymax=1.1*ymax

  hist(w,freq=FALSE,  ylim=c(0,ymax),
       main=paste("Histogram of sample mean","\n", "sample size= ",n,sep=""),
       xlab="Sample mean",...)
  curve(dnorm(x,mean=n*p,sd=sqrt(p*(1-p))),add=TRUE,col="Red",lty=2,lwd=3)

}
