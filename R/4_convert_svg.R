source("R/plot.R")
library(svglite)

## code für ggplot grafik

ggsave(file='medianpolen_05-17.svg', plot= plot_medPL, height=4,width=7)

ggsave(file="plot_giniPL_05-17.svg", plot = plot_giniPL, height = 4, width = 7)



