library(tidyverse)

ec <- read.csv(file = "social_capital_county.csv")|> 
  select(county, count_name, pop2018, ec_county)|> 
  drop_na()|> 
  mutate(state = str_remove(county_name, ".*, "))

write_rds(ec, "ec.rds")
