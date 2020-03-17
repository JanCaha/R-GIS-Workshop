##Ukázka 6=name
##R workshop=group
##vstupni_raster=raster
##velikost_okna=number 9
##vystupni_raster=output raster

raster_pasmo <- raster(vstupni_raster, layer = 1)

vystupni_raster <- focal(raster_pasmo, 
						 w=matrix(1/(velikost_okna*velikost_okna),
						 nrow=velikost_okna, 
						 ncol=velikost_okna))
