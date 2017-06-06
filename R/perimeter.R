#' Calculate the length of the perimeter of an ellipse.
#'
#' @param r Length of the semi-major axis.
#' @param e The eccentricity, if approx is true, then this parameter is the semi-minor axis
#' @param approx whether user wants to calculate ramanujan approximation
#' @return The length of the perimeter of the ellipse with specified semi-major axis and eccentricity.
#' @examples
#' ellipse_perimeter(1, 1)
#' ellipse_perimeter(1)
#' ellipse_perimeter(10,5,approx=T)
#' @export
ellipse_perimeter <- function(r, e = 0, approx=FALSE) {
  if ((e < 0 || e > 1) && approx==F ) stop("ERROR: Invalid eccentricity!", call. = FALSE)
  if(approx==F){
    if (e == 0) {
      2 * pi * r
    } else {
      return(4 * r * pracma::ellipke(e)$e)
    }
  } else {
    if(e>r) stop("ERROR: e is semi-minor axis and therefore needs to be smaller than r", call=F)
    inside_func = 3*(r+e) - sqrt((3*r+e)*(r+3*e))
    return( pi*inside_func)
  }
}
