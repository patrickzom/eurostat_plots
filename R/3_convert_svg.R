source("R/2_plots.R")
library(svglite)

## code für ggplot grafik

ggsave(file="graphs/median_income_pol_05_17.svg", plot = plot_med, height = 4, width = 7)

ggsave(file="graphs/gini_pol_05_17.svg", plot = plot_gini, height = 4, width = 7)