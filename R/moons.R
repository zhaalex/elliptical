#' Specifications of the moons of each planet in the Solar System.
#'
#' A dataset containing the name, oribiting planet name, orbital radius and orbital eccentricity of
#' the moons in the Solar System. I'm old school, so Pluto is still included.
#'
#' @format A data frame with 149 records and 4 variables: # TODO: ADD ALL 149 OBSERVABLE MOONS OF THE SOLAR SYSTEM
#' \describe{
#'   \item{name}{moon name;}
#'   \item{planetName}{name of the planet it orbits;}
#'   \item{distance}{length of orbital semi-major axis [units: AU];}
#'   \item{eccentricity}{orbital eccentricity.}
#' }
#' @source
#' These data were constructed using information from NASA's Planetary Fact Sheet at http://nssdc.gsfc.nasa.gov/planetary/factsheet/.
#' @examples
#' plot(eccentricity ~ distance, data = planets)
"moons"

if (FALSE) {
  # Distances are in units of 1 000 000 km.
  #
  planets <- data.frame(
    name = c('Luna', 'Phobos', 'Deimos'), # Only Earth and Mars' moons have been added. To be continued...
    planetNames = c('Earth', 'Mars', 'Mars'), # TODO: Add more
    distance = c(0.3844, 0.009376, 0.0234632),
    eccentricity = c(0.0549, 0.0151, 0.00033)
  )
  #
  # Convert from km to AU.
  #
  moons <- transform(moons, distance = distance * 1e6 / 1.496e8)
  
  devtools::use_data(moons, overwrite = TRUE)
}

