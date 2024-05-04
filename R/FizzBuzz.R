#' Fizz Buzz Function
#'
#' Because this is a very simple function, my explanation is short. These
#' paragraphs should explain everything you need to know.
#'
#'This is a function that will output a  vector of the
#'first $n$ terms in the child's game *Fizz Buzz*. The input of the function is
#'a positive integer $n$ and the output will be a vector of characters. The goal
#'is to count as high as you can, but for any number evenly divisible by 3,
#'substitute "Fizz" and any number evenly divisible by 5, substitute "Buzz",
#'and if it is divisible by both, substitute "Fizz Buzz". So the sequence will
#'look like 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, ..
#'
#' @param n : a positive integer

FizzBuzz <- function(n) {
  if (!is.numeric(n) || any(!is.finite(n)) || any(n <= 0)) {
    stop("Error! n must be positive, finite number!")
  }

  output <- character(length = n)

  for (i in 1:n) {
    if (i %% 3 == 0 & i %% 5 == 0) {
      output[i] <- 'Fizz Buzz'
    } else if (i %% 5 == 0) {
      output[i] <- 'Buzz'
    } else if (i %% 3 == 0) {
      output[i] <- 'Fizz'
    } else {
      output[i] <- as.character(i)
    }
  }

  return(output)
}


# c. Force your package to use unit testing by running the usethis::use_testthat():
usethis::use_testthat()

# f. Modify your function so that if the user inputs a negative, zero, or infinite value for n, that the
# function throws and error using the command stop('Error Message'). Modify the error message
# appropriately for the input n. Hint: there is a family of functions is.XXX() which test a variety of
# conditions. In particular there is a is.infinite() function.
