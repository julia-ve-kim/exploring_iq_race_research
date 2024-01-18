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

#### Simulate data ####
set.seed(853) # for reproducibility
simulated_iq_data <- 
  tibble(
    race = c(
      "Arctic Peoples", "Northeast Asians", "Europeans", "Native Americans",
      "South Asians", "North Africans", "Bushmen", "Sub-Saharan Africans",
      "Australians", "Southeast Asians", "Pacific Islanders"
    ),
    IQ = round(
      rnorm(
        n = 11,  
        mean = 100,
        sd = 15
      )
    ) 
  ) 

print(simulated_iq_data)



