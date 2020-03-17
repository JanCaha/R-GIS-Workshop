##Ukázka 1=name
##R workshop=group
##output_plots_to_html
##Layer=vector
##X=Field Layer
##bins=number 25
library(dplyr)
library(ggplot2)
library(plotly)
library(scales)

data <- Layer %>% 
  st_drop_geometry()

ggplot(data) + 
  geom_histogram(aes(x = .data[[X]]), bins = bins) +
  scale_x_continuous(labels = scales::comma) +
  coord_trans(x = "log10") + 
  theme_bw() +
  theme(aspect.ratio = 9/16)
