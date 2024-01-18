#### Preamble ####
# Purpose: Cleans the raw plane data recorded by two observers..... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 6 April 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_iq_race_data <-  read_csv(file = "inputs/data/race_iq_data.csv", show_col_types = FALSE)

iq_race_data_clean <- clean_names(raw_iq_race_data) |> 
  select(race, iq)
head(iq_race_data_clean)

#### Save data ####
write_csv(x = iq_race_data_clean, file = "outputs/data/cleaned_iq_race_data.csv")