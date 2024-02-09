#' Lab 2 Z Value
#'
#' @param x a numerical vector
#'
#' @return a numerical vector
#' @export
#'
#' @examples
#' lab2class(x=data$column)
lab2zvalue = function(x){
  (x-mean(x))/stats::sd(x)
  }
