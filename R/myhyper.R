#' Hypergeometric Function
#'
#' @param iter number of iterations
#' @param N number of data points
#' @param r number of successful points
#' @param n number of sample points
#'
#' @return a set of graphs
#' @export
#'
#' @examples
#' myhyper(iter=1000, n=19, N=20, r=12)
myhyper=function(iter=100,N=20,r=12,n=5){
  sam.mat=matrix(NA,nr=n,nc=iter, byrow=TRUE)
  succ=c()
  for( i in 1:iter){
    sam.mat[,i]=sample(rep(c(1,0),c(r,N-r)),n,replace=FALSE)
    succ[i]=sum(sam.mat[,i])
  }
  succ.tab=table(factor(succ,levels=0:n))
  graphics::barplot(succ.tab/(iter), col=grDevices::rainbow(n+1), main="HYPERGEOMETRIC simulation", xlab="Number of successes")
  succ.tab/iter
}
