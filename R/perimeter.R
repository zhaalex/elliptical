#' Calculate the length of the perimeter of an ellipse.
#'
#' @param t Length of the semi-major axis.
#' @param e The eccentricity.
#' @return The length of the perimeter of the ellipse with specified semi-major axis and eccentricity.
#' @examples
#' perimeter_ellipse(1, 1)
#' perimeter_ellipse(1)
#' @export
perimeter_ellipse <- function(r, e = 0) {
  if (e < 0 || e > 1) stop("Invalid eccentricity!", call. = FALSE)
  if (e == 0) {
    2 * pi * r
  } else {
    4 * r * pracma::ellipke(e)$e
  }
}
