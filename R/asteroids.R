#' Specifications of the planets in the Solar System.
#'
#' A dataset containing the name, orbital radius and orbital eccentricity of
#' the top 5 exceptional asteroids in the Solar System. These include: Ceres, Pallas, Juno, Vesta, and Lutetia
#'
#' @format A data frame with 5 records and 3 variables:
#' \describe{
#'   \item{name}{asteroid name;}
#'   \item{distance}{length of orbital semi-major axis [units: AU];}
#'   \item{eccentricity}{orbital eccentricity.}
#'   \item{mass}{asteroid mass [units: kg];}
#'   \item{period}{orbital period [units: earth years];}
#' }
#' @source
#' These data were constructed using information from NASA's Planetary Fact Sheet at https://nssdc.gsfc.nasa.gov/planetary/factsheet/asteroidfact.html.
#' @examples
#' plot(eccentricity ~ distance, data = asteroids)
"asteroids"

if (TRUE) {
  # Distances are in units of 1 000 000 km.
  #
  asteroids <- data.frame(
    name = c('Ceres', 'Pallas', 'Juno', 'Vesta', 'Lutetia'),
    distance = c(414.1, 414.7, 399.4, 353.4, 364.3),
    eccentricity = c(0.076, 0.231, 0.256, 0.089, 0.165),
    mass = c(8.958*10**20, 1.2*10**20, 2.67*10**19, 2.590*10**20, 1.7*10**18),
    period = c(4.60, 4.61, 4.366, 3.629, 3.8)
  )
  #
  # Convert from km to AU.
  #
  asteroids <- transform(asteroids, distance = distance * 1e6 / 1.496e8)
  
  devtools::use_data(asteroids, overwrite = TRUE)
}