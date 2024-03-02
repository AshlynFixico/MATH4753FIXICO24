#' myncurve
#'
#' @param a a numeric vector, the value up to which area is found
#' @param mu  a numeric vector, the mean value of the function
#' @param sigma a numeric vector, the standard deviation of the function
#'
#' @return a graph, and a list of values
#' @export
#'
#' @examples
#' myncurve(1,2,3)
myncurve = function(a, mu, sigma){
  x = NULL
  curve(dnorm(x,mean=mu,sd=sigma), xlim = c(mu-3*sigma, mu + 3*sigma))
  xcurve = seq((mu-3*sigma), a, length = 1000)
  ycurve = dnorm(xcurve, mean = mu, sd = sigma)
  polygon(c(mu-3*sigma, xcurve, a), c(0,ycurve,0), col = NULL)

  prob = (pnorm(a, mean=mu, sd= sigma))
  prob = round(prob, 4)
  area = prob
  list(mu = mu, sigma = sigma, area = area)
}
