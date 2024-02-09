#' Lab 3 Linear Model Summary Coefficients
#'
#' @param x linear model input
#'
#' @return numerical vector output
#' @export
#'
#' @examples
#' lab3lmsummary(x=mydata.lm)
lab3lmsummary <- function(x){
  stats::coef(x)
}
