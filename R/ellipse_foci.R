#' Calculate distance from the center to the focal points
#'
#' @param a length of the major axis 
#' @param b length of the minor axis
#' @return The the distance of the focal point to the center
#' @examples
#' ellipse_foci_distance(1, 0.5)
#' @export
ellipse_foci_distance = function(a, b){
  if(a > b){
    return(sqrt(a**2 - b**2))
  }
  else{
    return(sqrt(b**2 - a**2))
  }
}
