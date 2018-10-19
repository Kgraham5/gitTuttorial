
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


