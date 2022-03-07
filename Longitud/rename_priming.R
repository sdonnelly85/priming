library(writexl)
library(tidyverse)
library(readxl)

DOD_42mo <- read_excel("Longitud/DOD_42mo.xlsx")
DOD_48mo <- read_excel("Longitud/DOD_48mo.xlsx")
DOD_54mo <- read_excel("Longitud/DOD_54mo.xlsx")

blind_ids <- read.csv("Longitud/blind_ids.csv")

DOD_42mo  <- left_join(DOD_42mo ,blind_ids, by="ParticipantName") %>%
 filter(is.na(Drop)) %>%
 select(-"ParticipantName", -"Drop") %>%
  relocate("Blind_ID")


write_xlsx(DOD_42mo, "Longitud/DOD_42mo_blind.xlsx")

DOD_48mo  <- left_join(DOD_48mo ,blind_ids, by="ParticipantName") %>%
  filter(is.na(Drop)) %>%
  select(-"ParticipantName", -"Drop") %>%
  relocate("Blind_ID")

write_xlsx(DOD_48mo, "Longitud/DOD_48mo_blind.xlsx")

DOD_54mo  <- left_join(DOD_54mo ,blind_ids, by="ParticipantName") %>%
  filter(is.na(Drop)) %>%
  select(-"ParticipantName", -"Drop") %>%
  relocate("Blind_ID")

write_xlsx(DOD_54mo, "Longitud/DOD_54mo_blind.xlsx")