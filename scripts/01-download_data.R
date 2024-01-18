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

#### Save data ####
write_csv(x = raw_iq_race_data, file = "inputs/data/raw_iq_race_data.csv")

         
