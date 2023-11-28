#' Sine Function
#'
#' Compute the sine of a number
#'
#' @details This function computes the sine of a number using the truncated series expansion.
#'
#' @param x the number to be transformed
#' @param k the number of terms to be used in the series expansion beyond the constant x. The value of k is always greater than or equal to 1.
#'
#' @return Returns the sine using truncated series expansion.
#'
#' @export
#'
#' @examples
#' fn_sin(6,15)
#'

fn_sin <- function(x, k) {
  if (length(x) == 1 & is.numeric(x) & k >= 1) {
    terms <- seq(3,(k+1)*2, by = 2)
    terms <- x^terms/factorial(terms)
    terms <- terms*rep(c(-1,1), length.out = k)
    fn_sin <- x + sum(terms)
    return(fn_sin)
  } else {
    message("Make sure your input 'x' has a length of 1 and is numeric and 'k' is greater than or equal to 1.")
  }
}
