#' Specifications of the moons of each planet in the Solar System.
#'
#' A dataset containing the name, oribiting planet name, orbital radius and orbital eccentricity of
#' the moons in the Solar System.
#'
#' @format A data frame with 7 records and 4 variables: # TODO: ADD ALL 149 OBSERVABLE MOONS OF THE SOLAR SYSTEM
#' \describe{
#'   \item{moon}{moon name;}
#'   \item{planet}{name of the planet it orbits;}
#'   \item{distance}{length of orbital semi-major axis [units: AU];}
#'   \item{eccentricity}{orbital eccentricity.}
#' }
#' @source
#' These data were constructed using information from NASA's Planetary Fact Sheet at http://nssdc.gsfc.nasa.gov/planetary/factsheet/.
#' @examples
#' \dontrun{
#' plot(eccentricity ~ distance, data = planets)
#' }
"moons"

if (FALSE) {
  # Distances are in units of 1 000 000 km.
  #
  moons <- data.frame(
    moon = c('Luna', 'Phobos', 'Deimos', 'Io','Europa','Ganymede','Callisto'), # Only Earth, Mars, and some of Jupiter's moons have been added. To be continued...
    planet = c('Earth', 'Mars', 'Mars', 'Jupiter', 'Jupiter', 'Jupiter', 'Jupiter'), # TODO: Add more
    distance = c(0.3844, 0.009376, 0.0234632, .422000, .671000, 1.070000,	1.883000),
    eccentricity = c(0.0549, 0.0151, 0.00033, 0.0041, 0.0094, 0.0011, 0.0074)
  )
  #
  # Convert from km to AU.
  #
  moons <- transform(moons, distance = distance * 1e6 / 1.496e8)
  
  devtools::use_data(moons, overwrite = TRUE)
}

