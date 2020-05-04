# LOAD PACKAGES ----

library(tidyverse)

# LOADING THE DATA ----
# 1. Save data from BU (https://github.com/dsfsi/covid19africa/blob/master/data/staging/2020.04.01.20050203-2.xlsx) as CSV
#    The native Excel spreadsheet has a problem with the date formatting and doesn't see day-month-year as it is displayed in Excel
# 2. Load CSV file from above in Openrefine 3.2 and run the json script in scripts/bu-data-openrefine.json
# 3. Export CSV file from openrefine and load here in R

bu_data <- read_csv("data/tmp_data/2020-04-01-20050203-2-refine.csv") %>% 
  mutate(date = date_confirmation)

# SEPERATING INTO COUNTRY LISTS ----

# Function copied from https://stackoverflow.com/questions/41233173/how-can-i-write-dplyr-groups-to-separate-files

bu_data %>% 
  group_by(country) %>% 
  do(writeCountryFiles(.))



