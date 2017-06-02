#' Specifications of some of the dwarf planets in the Solar System.
#'
#' A dataset containing the name, orbital radius and orbital eccentricity of
#' the dwarf planets in the Solar System. 
#'
#'
#' @format A data frame with 3 records and 3 variables:
#' \describe{
#'   \item{name}{ dwarf planet name;}
#'   \item{distance}{length of orbital semi-major axis [units: AU];}
#'   \item{eccentricity}{orbital eccentricity.}
#' }
#' @source
#' These data were constructed using information from:
#' https://en.wikipedia.org/wiki/Eris_(dwarf_planet)
#' https://en.wikipedia.org/wiki/Haumea
#' https://en.wikipedia.org/wiki/Makemake
#' http://www.space.com/18584-dwarf-planets-solar-system-infographic.html
#' @examples
#' plot(eccentricity ~ distance, data = dwarf.planets)
"dwarfplanets"

if (FALSE) {
  # Distances are in units of 1 000 000 km.
  #
  dwarfplanets <- data.frame(
    name = c('Eris', 'Haumea', 'Makemake'),
    distance = c(10172.8, 6447.8, 6776.9),
    eccentricity = c(0.441, 0.191, 0.156 )
  )
  #
  # Convert from km to AU.
  #
  dwarfplanets <- transform(dwarfplanets, distance = distance * 1e6 / 1.496e8)
  
  devtools::use_data(dwarfplanets, overwrite = TRUE)
}
