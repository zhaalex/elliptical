#' Specifications of Jupiter's Galilean moons.
#'
#' A dataset containing the name, orbital radius and orbital eccentricity of
#' Jupiter's Galilean moons. 
#' 
#' @format A data frame with 4 records and 3 variables:
#' \describe{
#'   \item{name}{moon name;}
#'   \item{distance}{length of orbital semi-major axis [units: AU];}
#'   \item{eccentricity}{orbital eccentricity.}
#' }
#' @source
#' These data were constructed using information from http://www.pa.msu.edu/people/horvatin/Astronomy_Facts/planet_pages/Jupiters_moons.htm
#' @examples
#' plot(eccentricity ~ distance, data = moons)
"moons"

if (FALSE) {
  # Distances are in units of 1 000 000 km.
  #
  moons <- data.frame(
    name = c('Io','Europa','Ganymede','Callisto'),
    distance = c(.422000,	.671000,1.070000,	1.883000),
    eccentricity = c(0.0041,0.0094,0.0011,0.0074)
  )
  #
  # Convert from km to AU.
  #
  planets <- transform(moons, distance = distance * 1e6 / 1.496e8)
  
  devtools::use_data(moons, overwrite = TRUE)
}
