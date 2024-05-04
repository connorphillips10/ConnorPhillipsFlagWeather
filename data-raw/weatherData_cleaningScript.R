# b. Also in the data-raw directory, create an R-script that reads in the data and does any necessary
# cleaning. Call your resulting data frame Flagstaff_Weather and save a .rda file to the data/ directory
# using the command usethis::use_data(Flagstaff_Weather). For this package, we only care about
# a couple of variables, DATE, PRCP, SNOW, TMAX, and TMIN. Keep and document only these variables.
library(tidyverse)
library(readr)
library(lubridate)


Flagstaff_Weather = data.frame(read.csv('Pulliam_Airport_Weather_Station.csv')) %>%
  select('DATE', 'PRCP', 'SNOW', 'TMAX', 'TMIN') %>%
  mutate('DATE' = ymd(DATE)) %>%
  rename(SNOWFALL = SNOW) %>%
  rename(PRECIPITATION = PRCP) %>%
  rename(TEMP_MAX = TMAX) %>%
  rename(TEMP_MIN = TMIN)

usethis::use_data(Flagstaff_Weather, overwrite = TRUE)


