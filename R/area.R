#' Calculate the area of an ellipse.
#'
#' @param t Length of the semi-major axis.
#' @param e The eccentricity.
#' @return The area of the ellipse with specified semi-major axis and eccentricity.
#' @examples
#' area_ellipse(1, 1)
#' area_ellipse(1)
#' @export
area_ellipse <- function(r, e = 0) {
  if (e < 0 || e > 1) stop("Invalid eccentricity!", call. = FALSE)
  pi * r^2 * sqrt(1 - e^2)
}
