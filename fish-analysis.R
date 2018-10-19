
.libPaths("P://RLibs")
library(tidyverse)

fishdata <- read_csv("Data/Gaeta_etal_CLC_data.csv")

fishdata %>% 
  mutate(length_cut = case_when(length >= 300 ~ "big",
                                length < 200 ~ "small")) -> fishdata
