# Distances are in units of 1 000 000 km.
#
planets <- data.frame(
  name = c('Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune', 'Pluto'),
  distance = c(57.9, 108.2, 149.6, 227.9, 778.6, 1433.5, 2872.5, 4495.1, 5906.4),
  eccentricity = c(0.205, 0.007, 0.017, 0.094, 0.049, 0.057, 0.046, 0.011, 0.244)
)
#
# Convert from km to AU.
#
planets <- transform(planets, distance = distance * 1e6 / 1.496e8)

devtools::use_data(planets, overwrite = TRUE)
