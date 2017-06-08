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
#'   \item{mass}{planet mass [units: kg];}
#'   \item{period}{orbital period [units: earth years];}
#' }
#' @source
#' These data were constructed using information from NASA's Planetary Fact Sheet at http://nssdc.gsfc.nasa.gov/planetary/factsheet/.
#' @examples
#' plot(eccentricity ~ distance, data = planets)
"planets"

if (FALSE) {
  # Distances are in units of 1 000 000 km.
  #
  planets <- data.frame(
    name = c('Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune', 'Pluto', 'Sedna', 'Quaoar', 'Orcus'),
    distance = c(57.9, 108.2, 149.6, 227.9, 778.6, 1433.5, 2872.5, 4495.1, 5906.4, 75816.201, 6488.508, 5899.093),
    eccentricity = c(0.205, 0.007, 0.017, 0.094, 0.049, 0.057, 0.046, 0.011, 0.244, 0.85491, 0.034704, 0.2190),
    mass = c(3.285*10**23, 4.876*10**24, 5.972*10**24, 6.39*10**23, 1.898*10**27, 5.683*10**26, 8.681*10**25, 1.024*10**26, 1.309*10**22, NA, 1.4*10**21, 6.32*10**20),
    period = c(0.241, 0.615, 1.000, 1.881, 11.86, 29.46, 84.01, 164.8, 247.9, 11400, 284.5, 245.18, 4.602)
  )
  #
  # Convert from km to AU.
  #
  planets <- transform(planets, distance = distance * 1e6 / 1.496e8)

  devtools::use_data(planets, overwrite = TRUE)
}