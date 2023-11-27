#' Sine Function
#'
#' Compute the sine of a number
#'
#' @details This function computes the sine of a number using the truncated series expansion.
#'
#' @param x the number (or vector of numbers) to be transformed
#' @param k the number of terms to be used in the series expansion beyond the constant 1. The value of k is always greater than or equal to 1.
#'
#' @return Returns the sine using truncated series expansion.
#'
#' @export
#'
#' @examples
#' fn_sin(6,15)
#'

fn_sin <- function(x, k) {
  if (is.numeric(x) & k >= 1) {
    terms <- seq(3,(k+1)*2, by = 2)
    result <- sapply(x, function(xi) {
      terms_i <- xi^terms/factorial(terms)
      terms_i <- terms_i*rep(c(-1,1), length.out = k)
      fn_sin <- xi + sum(terms_i)
      return(fn_sin)
    })
    return(result)
  } else {
    message("Make sure your input is numeric and the number of terms added to the expansion is greater than or equal to 1.")
  }
}
