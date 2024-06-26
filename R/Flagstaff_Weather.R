#' Pulliam Airport Weather Station Data 1950-2019
#'
#' This dataset contains weather data at the Pulliam Airport 1950-2019.
#' The data was downloaded on 9-19-19 from
#' https://www.ncdc.noaa.gov/cdo-web/search onto the class GitHub repository.
#' Connor Phillips downloaded the data on 4-30/24 and selected a portion of the
#' data for use in this package.
#'
#' @format A data frame with 25449 observations with 5 columns.
#' \describe{
#'    \item{DATE}{The date of recording, year-month-day}
#'    \item{PRECPITATION}{Precipitation, inches}
#'    \item{SNOWFALL}{Snowfall, inches}
#'    \item{TEMP_MAX}{Maximum daily temperature, Fahrenheit}
#'    \item{TEMP_MIN}{Minimum daily temperature, Fahrenheit}
#' }
"Flagstaff_Weather"
