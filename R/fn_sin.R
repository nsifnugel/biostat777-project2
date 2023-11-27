#' Sine Function
#'
#' Compute the sine of a number
#'
#' @details This function computes the sine of a number using the truncated series expansion.
#'
#' @param x the number to be transformed
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
  if(length(x) == 1 & is.numeric(x) & k >= 1) {
    terms <- seq(3,(k+1)*2,by=2)
    terms <- x^terms/(factorial(terms))
    terms <- terms * rep(c(-1,1), length.out = k)
    fun_sin = x + sum(terms)
    return(fun_sin)
  } else {
    message("Make sure your input is a single numeric and the number of terms added to the expansion is greater than or equal to 1.")
  }
}

