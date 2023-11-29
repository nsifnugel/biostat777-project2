#' ci_class constructor
#'
#' Creates a ci_class object
#'
#' @details This function transforms an input to an object of ci_class. The input must be a numeric vector. This function is useful because the calculate_CI function in this package only takes input of ci_class.
#'
#' @param x vector containing numeric values of ci_class
#'
#' @return none
#' @export
#'
#' @examples
#' x = c(0,1,2,3)
#' x = make_ci_class(x)
#' class(x)

make_ci_class <- function(x){
  structure(list(Data = x),
            class = "ci_class")
}





