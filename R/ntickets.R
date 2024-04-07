#' ntickets
#'
#' @param N a numeric vector
#' @param gamma a numeric vector
#' @param p a numeric vector
#'
#' @return a list of values
#' @export
#'
#' @examples
#' ntickets(N = 200, gamma = 0.02, p=0.95)
ntickets <- function(N = 200, gamma = 0.02, p=0.95){
  # we need to define the characteristic function to be evaluated
  ndcharfun <- function(x,p=0.95,N = 200,gamma = 0.02){
    abs(1-gamma-pbinom(N,x,p))
  }
  #n can only be a value between N and N*2
  x <- seq(N,N*2, by =1)
  ndind <- which.min(ndcharfun(x,p,N,gamma))
  nd <- round(x[ndind])

  x <- seq(N,nd+30)
  plotfun <- (1-gamma-pbinom(N,x,p))
  plot(x,plotfun,main = paste("Objective vs n to find optimal tickets sold", "\n","discrete",sep=""), xlab = "n", ylab = "Objective")
  curve((1-gamma-pbinom(N,x,p)),from= N, to=(N*2), add = TRUE, lwd=2, col="blue")
  abline(v=nd)


  nccharfun <- function(x,p=0.95,N = 200,gamma = 0.02){
    abs(1-gamma-(pnorm(N+0.5,x*(p),(sqrt(p*(1-p)*x)))))
  }
  #n can only be a value between N and N*2
  x <- seq(N,N*2, by=0.001)
  n<- which.min(nccharfun(x,p,N,gamma))
  nc<- x[n]

  curve((1-gamma-(pnorm(N+0.5,x*p,sqrt(p*(1-p)*x)))), from = N, to = (nc+30), xlab = "n", ylab = "Objective", main = (paste("Objective vs n to find optimal tickets sold",
                                                                                                                            "\n","continuous",sep="")))
  abline(v=nc)

  return(list(nd=nd, nc=nc,
              N = N, gamma = gamma, p = p))
}
