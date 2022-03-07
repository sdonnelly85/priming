library(readxl)
library(tidyverse)

DOD_42mo <- read_xlsx("DOD_42mo_blind.xlsx") 
DOD_42mo <- DOD_42mo %>%
  mutate(
    Time = "42"
  )

