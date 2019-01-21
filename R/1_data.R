library(eurostat)
library(dplyr)

names <- c("pov_th", "pov", "quants", "qsr", "gini", 
           "inc", "hlth", "pov_reg")
codes <- c("ilc_li01", "ilc_li02", "ilc_di01", "ilc_di11", "ilc_di12", 
           "ilc_di03", "ilc_lk11", "ilc_li41")

data <- lapply(codes, get_eurostat, stringsAsFactors = FALSE)
names(data) <- names

list2env(data, .GlobalEnv)




