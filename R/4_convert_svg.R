source("R/3_plots.R")
library(svglite)

## code für ggplot grafik

ggsave(file="graphs/median_income_pol_05_17.svg", plot = plot_medPL, height=4,width=7)

ggsave(file="graphs/gini_pol_05_17.svg", plot = plot_giniPL, height = 4, width = 7)