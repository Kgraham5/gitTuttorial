
.libPaths("P://RLibs")
library(tidyverse)
source("R/themes.R")

library(extrafont)
loadfonts()

fishdata <- read_csv("Data/Gaeta_etal_CLC_data.csv")

fishdata %>% 
  mutate(length_cut = case_when(length >= 200 ~ "big",
                                length < 200 ~ "small")) -> fishdata

ggplot(fishdata) +
  geom_histogram(aes(x = scalelength, fill = length_cut))+
  facet_wrap(~length_cut) +
  theme_presentation()


## Chris's modifications

ggplot() +
  geom_histogram(data = fishdata, aes(x = scalelength, fill = length_cut), colour = "black", bins = 25) +
  facet_wrap(~length_cut) +
  coord_cartesian(ylim = c(0,500), xlim = c(0, 11), expand = FALSE) +
  theme_classic() +
  theme(legend.position = "none",
        panel.spacing = unit(2, "lines"))
