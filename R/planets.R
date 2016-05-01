#' Specifications of the planets in the Solar System.
#'
#' A dataset containing the name, orbital radius and orbital eccentricity of
#' the planets in the Solar System. I'm old school, so Pluto is still in there.
#'
#' @format A data frame with 9 records and 3 variables:
#' \describe{
#'   \item{name}{planet name;}
#'   \item{distance}{length of orbital semi-major axis [units: AU];}
#'   \item{eccentricity}{orbital eccentricity.}
#' }
#' @source
#' These data were constructed using information from \href{http://nssdc.gsfc.nasa.gov/planetary/factsheet/}{NASA's Planetary Fact Sheet}.
#' @examples
#' plot(eccentricity ~ distance, data = planets)
"planets"
