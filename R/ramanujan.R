#' Calculates Perimeter using Ramanujan Approximation
#'
#' @param a #semi-major axis
#' @param b #semi-minor axis
#'
#' @return #circumference of circle/ellipse
#' @export
#'
#' @examples
#' ramanujan(10,12) = 69.25791
#' ramanujan(6,7) = 40.90114
ramanujan = function(a, b=a) {
  if(b<a) stop("error: b is semi-minor axis and therefore needs to be smaller than a", call=F)
  inside_func = 3*(a+b) - sqrt((3*a+b)*(a+3*b))
  return( pi*inside_func)
}