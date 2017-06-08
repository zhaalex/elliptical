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
#'   \item{obs_precession}{observed perihelion precession rate of planet [units: arcseconds per planetary-year];}
#'   \item{theor_precession}{theoretical perihelion precession rate of planet [units: arcseconds per planetary-year];}
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
<<<<<<< HEAD
    name = c('Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune', 'Pluto'),
    distance = c(57.9, 108.2, 149.6, 227.9, 778.6, 1433.5, 2872.5, 4495.1, 5906.4),
    eccentricity = c(0.205, 0.007, 0.017, 0.094, 0.049, 0.057, 0.046, 0.011, 0.244),
    obs_precession = c(5.75, 2.04, 11.45, 16.28, 6.55, 19.50, 3.34, 0.36, NA),
    theor_precession = c(5.50, 10.75, 11.87, 17.60, 7.42, 18.36, 2.72, 0.65, NA)
=======
    name = c('Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune', 'Pluto', 'Eris', 'Haumea', 'Makemake', 'Sedna', 'Quaoar', 'Orcus', 'Ceres'),
    distance = c(57.9, 108.2, 149.6, 227.9, 778.6, 1433.5, 2872.5, 4495.1, 5906.4, 10139.893, 6465.321, 6838.867, 75816.201, 6488.508, 5899.093, 414.0),
    eccentricity = c(0.205, 0.007, 0.017, 0.094, 0.049, 0.057, 0.046, 0.011, 0.244, 0.44068, 0.19126, 0.15586, 0.85491, 0.034704, 0.2190, 0.0758)
>>>>>>> 75a4794ef27e0bbdf402d7e7370fb855b5b74fe5
  )
  #
  # Convert from km to AU.
  #
  planets <- transform(planets, distance = distance * 1e6 / 1.496e8)

  devtools::use_data(planets, overwrite = TRUE)
}