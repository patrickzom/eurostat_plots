library(dplyr)

load("./data/eurostat_data.rda")

names <- c("pov_th", "pov", "quants", "qsr", "gini", 
           "inc", "hlth", "pov_reg")

names(eurostat_data) <- names

list2env(eurostat_data, .GlobalEnv)

#specify countries in vector
co <- c("PL", "EU28")

####ilc_di12

gini$time<- format(gini$time, format="%Y")
gini$time <- as.numeric(gini$time)

gini <- gini %>% filter(geo %in% co &
                          time > 2004)

colnames(gini)[colnames(gini)=="geo"] <- "Land"
gini$Land <- as.factor(gini$Land)
levels(gini$Land) <- c("EU-28", "PL")


####real income




####income ilc_di03
inc <- inc %>% filter(geo %in% co)

inc$time<-format(inc$time, format="%Y")
inc$time <- as.numeric(inc$time)


med <- inc %>% filter(age == "TOTAL" &
                         unit == "EUR" &
                         indic_il == "MED_E" &
                         sex== "T" &
                         geo %in% co)

colnames(med)[colnames(med)=="geo"] <- "Land"
med$Land <- as.factor(med$Land)
levels(med$Land) <- c("EU-28", "PL")


mean <- inc %>% filter(age == "TOTAL" &
                          unit == "EUR" &
                          indic_il =="MEI_E" &
                          sex == "T" &
                          geo %in% co )

colnames(mean)[colnames(mean)=="geo"] <- "Land"
mean$Land <- as.factor(mean$Land)
levels(mean$Land) <- c("EU-28", "PL")




# additional variables ----------------------------------------------------

#hlth  
ilc_lk11 <- hlth %>% filter(geo %in% co)

##ilc_li41
pov_reg <- pov_reg %>% filter(geo %in% co)

###  ilc_li01
pov_th <-pov_th %>% filter(geo %in% co)

### ilc_li02
pov <- pov %>% filter(geo %in% co  )

###ilc_di01
quants <- quants  %>% filter(geo %in% co)

###ilc_di11
qsr <- qsr %>% filter(geo %in% co)