#### Preamble ####
# Purpose: Read in Dr. Lynn's 2015 dataset on race differences in intelligence # and make a graph. Relate this dataset to the quote by Dr. Srinivasan.  
# Author: Julia Kim
# Email: juliaym.kim@mail.utoronto.ca
# Date: 18/02/24
# Prerequisites: Know where to get the 2015 dataset on race differences in intelligence, be familiar with the quote by Dr. Srinivasan. 


#### Workspace setup ####
library(tidyverse)
library(janitor)
library(formatR)
library(opendatatoronto)
knitr::opts_chunk$set(tidy.opts=list(width.cutoff=80), tidy=TRUE) # prevent source code from running off PDF page

#### Explore data #### 
cleaned_iq_race_data <- read_csv(file = "outputs/data/cleaned_iq_race_data.csv", 
                                 show_col_types = FALSE)
ggplot(cleaned_iq_race_data, aes(x = race, y = iq)) +
  geom_bar(stat = "identity", fill = "skyblue", color = "black") +
  labs(title = "IQ Scores by Race",
       x = "Race",
       y = "IQ Score", 
        caption = "Figure 2: Bar graph of IQ scores for various races.") +
  theme_minimal() + 
  theme(plot.caption = element_text(hjust = 0.5)) + # centre title 
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for legibility 
