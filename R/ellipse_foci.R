#' Calculate distance from the center to the focal points
#'
#' @param a length of the major axis 
#' @param b length of the minor axis
#' @return The the distance of the focal point to the center
#' @examples
#' ellipse_perimeter(1, 1)
#' ellipse_perimeter(1)
#' ellipse_perimeter(10, 1, approx = T)
#' @export

ellipse_foci_distance = function( a,b){
  if(a>b){
    c2 = a**2 - b**2
    return(sqrt(c2))
  }
  else{
    c2 = b**2 - a**2
    return(sqrt(c2))
  }
}
