#' Cosine Function
#'
#' Compute the cosine of a number
#'
#' @details This function computes the cosine of a number using the truncated series expansion.
#'
#' @param x the number to be transformed
#' @param k the number of terms to be used in the series expansion beyond the constant 1. The value of k is always greater than or equal to 1.
#'
#' @return Returns the cosine using truncated series expansion.
#'
#' @export
#'
#' @examples
#' fn_cos(4,9)
#'

fn_cos <- function(x, k) {
  if(length(x) == 1 & is.numeric(x) & k >= 1) {
    terms <- seq(2,k*2,by=2)
    terms <- x^terms/(factorial(terms))
    terms <- terms * rep(c(-1,1), length.out = k)
    fn_cos = 1 + sum(terms)
  return(fn_cos)
  } else {
    message("Make sure your input is a single numeric and the number of terms added to the expansion is greater than or equal to 1.")
  }
}


