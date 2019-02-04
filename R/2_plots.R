source("R./1_measures.R")
library(ggplot2)
library(scales)
# plots -------------------------------------------------------------------

#median
plot_med <- ggplot(med, aes(x = time, y = values, color = Land)) +
  geom_line(aes(color = Land), size = 1) +
  geom_point(aes(shape = Land), size = 3) +
  labs(x = "Jahr",
       y = "Verfügbares Medianeinkommen in EUR",
       title = "Medianeinkommen") +
  scale_x_continuous(breaks = (med$time)) +
  scale_color_manual(values=c("darkblue", "lightblue"))+
   theme_bw() +
  theme(legend.position = 'bottom', legend.title = element_blank())

plot_med


#mean


plot_mean <- ggplot(mean, aes(x = time, y = values, color = Land)) +
  geom_line(aes(color = Land), size = 1) +
  geom_point(aes(shape = Land), size = 3) +
  labs(x = "Jahr",
       y = "Post-tax disposable income",
       title = "Verfügbares durchschnittliches Einkommen")  +
  scale_x_continuous(breaks = mean$time) +
  theme_bw() +
  scale_color_manual(values = c("darkblue", "lightblue")) + 
  theme(legend.position = "bottom", legend.title = element_blank())


plot_mean

#gini
plot_gini <- ggplot(gini, aes(x = time, y = values, color = Land)) + 
  geom_line(aes(color = Land), size = 1) +
  geom_point(aes(shape = Land), size = 3) +
    labs(x = "Jahr",
       y = "Gini des verfügbaren Einkommens",
       title = "Gini") +
  scale_x_continuous(breaks = gini$time) +
  scale_color_manual(values = c("darkblue","lightblue")) +
  theme_bw() +
  theme(legend.position = "bottom", legend.title = element_blank())

plot_gini