#' Lab 2 Z Value
#'
#' @param x a numerical vector
#'
#' @return a numerical vector
#' @export
#'
#' @examples
#' lab2zvalue(x=c(1,2,3,4,5))
lab2zvalue = function(x){
  (x-mean(x))/stats::sd(x)
  }
