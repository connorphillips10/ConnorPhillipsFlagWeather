# This file is part of the standard setup for testthat.
# It is recommended that you do not modify it.
#
# Where should you do additional test configuration?
# Learn more about the roles of various files in:
# * https://r-pkgs.org/testing-design.html#sec-tests-files-overview
# * https://testthat.r-lib.org/articles/special-files.html

library(testthat)
library(ConnorPhillipsFlagWeather)

test_check("ConnorPhillipsFlagWeather")

# d. Add unit tests for testing that the length of the output is the same as the input n.
FizzBuzz(10)
FizzBuzz(50)
#e. Add unit tests that address what should happen if the user inputs a negative, zero, or infinite value
# for n.
FizzBuzz(0)
FizzBuzz(-10)


