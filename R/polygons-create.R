library(dplyr)

polygons <- data.frame(
  sides = 3:10,
  name = c("triangle", "square", "pentagon", "hexagon", "heptagon", "octagon", "nonagon", "decagon")
) %>% mutate(
  area = sides * pracma::cot(pi / sides) / 4,
  angle = (sides - 2) * pi / sides
)

devtools::use_data(polygons, overwrite = TRUE)
