source("R/data.R")

#specify countries in vector
co <- c("PL", "EU28")

####ilc_di12

gini$time<- format(gini$time, format="%Y")
gini$time <- as.numeric(gini$time)

giniPL <- gini %>% filter(geo %in% co &
                          time > 2004)

colnames(giniPL)[colnames(giniPL)=="geo"] <- "Land"
giniPL$Land <- as.factor(giniPL$Land)
levels(giniPL$Land) <- c("EU-28", "PL")


####income ilc_di03
inc <- inc %>% filter(geo %in% co)

inc$time<-format(inc$time, format="%Y")
inc$time <- as.numeric(inc$time)


medPL <- inc %>% filter(age == "TOTAL" &
                         unit == "EUR" &
                         indic_il == "MED_E" &
                         sex== "T" &
                         geo %in% co)

colnames(medPL)[colnames(medPL)=="geo"] <- "Land"
medPL$Land <- as.factor(medPL$Land)
levels(medPL$Land) <- c("EU-28", "PL")



meanPL <- inc %>% filter(age == "TOTAL" &
                          unit == "EUR" &
                          indic_il =="MEI_E" &
                          sex == "T" &
                          geo %in% co )

colnames(meanPL)[colnames(meanPL)=="geo"] <- "Land"
meanPL$Land <- as.factor(meanPL$Land)
levels(meanPL$Land) <- c("EU-28", "PL")


# no data hlth  ilc_lk11 <- hlth %>% filter(geo %in% co)



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



