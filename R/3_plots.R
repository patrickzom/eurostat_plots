source("R./2_measures.R")
library(ggplot2)
library(scales)
# plots -------------------------------------------------------------------
#median
plot_medPL<- ggplot(medPL, aes(x = time, y = values, color = Land)) +
  geom_line(aes(color = Land), size = 1) +
  geom_point(aes(shape = Land), size = 3) +
  labs(x = "Jahr",
       y = "Verfügbares Medianeinkommen in EUR",
       title = "Medianeinkommen") +
  scale_x_continuous(breaks = medPL$time) +
  scale_color_manual( values=c("darkblue", "lightblue"))+
   theme_bw() +
  theme(legend.position = 'bottom', legend.title = element_blank())

plot_medPL


#mean


plot_meanPL<- ggplot(meanPL, aes(x = time, y = values, color = Land)) +
  geom_line(aes(color = Land), size = 1.5) +
  geom_point(aes(shape = Land), size = 4) +
  labs(x = "Jahr",
       y = "Post-tax disposable income",
       title = "Verfügbares durchschnittliches Einkommen")  +
  scale_x_continuous(breaks = meanPL$time) +
  theme_bw() +
  scale_color_manual(values = c("darkblue", "lightblue")) + 
  theme(legend.position = "bottom", legend.title = element_blank())


plot_meanPL




#gini
plot_giniPL<- ggplot(giniPL, aes(x = time, y = values, color = Land)) + 
  geom_line(aes(color = Land), size = 1) +
  geom_point(aes(shape = Land), size = 3) +
    labs(x = "Jahr",
       y = "Gini des verfügbaren Einkommens",
       title = "Gini") +
  scale_x_continuous(breaks = giniPL$time) +
  scale_color_manual(values = c("darkblue","lightblue")) +
  theme_bw() +
  theme(legend.position = "bottom", legend.title = element_blank())

plot_giniPL