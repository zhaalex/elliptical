#' Specifications of a few regular polygons.
#'
#' A dataset containing the name, area and internal angle for a few regular polygons
#' with between 3 and 10 sides.
#'
#' @format A data frame with 8 records and 4 variables:
#' \describe{
#'   \item{sides}{number of sides;}
#'   \item{name}{name;}
#'   \item{area}{area for polygon with side length = 1;}
#'   \item{angle}{internal angle [radians].}
#' }
#' @source
#' These data were constructed using information from \href{https://en.wikipedia.org/wiki/Regular_polygon}{Regular polygon [Wikipedia]}.
#' @examples
#' plot(angle ~ sides, data = polygons)
"polygons"
