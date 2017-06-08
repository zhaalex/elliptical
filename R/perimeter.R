#' Calculate the length of the perimeter of an ellipse.
#'
#' @param r Length of the semi-major axis.
#' @param e The eccentricity, 
#' @param approx whether user wants to calculate ramanujan approximation
#' @return The length of the perimeter of the ellipse with specified semi-major axis and eccentricity.
#' @examples
#' ellipse_perimeter(1, 1)
#' ellipse_perimeter(1)
#' ellipse_perimeter(10,1,approx=T)
#' @export
ellipse_perimeter <- function(r, e = 0, approx=FALSE) {
  if ((e < 0 || e > 1)) stop("ERROR: Invalid eccentricity!", call. = FALSE)
  if(approx==F){
    if (e == 0) {
      2 * pi * r
    } else {
      return(4 * r * pracma::ellipke(e)$e)
    }
  } else {
    #calculate semi minor axis
    b = r*sqrt(1-e^2)
    inside_func = 3*(r+b) - sqrt((3*r+b)*(r+3*b))
    return( pi*inside_func)
  }
}
