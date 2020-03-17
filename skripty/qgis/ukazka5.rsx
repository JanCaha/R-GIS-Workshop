##Ukázka 5=name
##R workshop=group
##vrstva_rozsah=vector
##velikost_bunky=number 5000
##dosah=number 10000
##vystupni_vrstva=output vector

library(SpatialKDE)
library(CzechData)

rozhledny <- load_Data50("RozhlednaVysilac")

bunky <- create_grid_hexagonal(
  vrstva_rozsah,
  velikost_bunky,
  side_offset = 0,
  only_inside = TRUE
)

vystupni_vrstva <- kde(rozhledny,
					   dosah,
                       grid = bunky)
