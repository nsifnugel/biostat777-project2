#' Print Method for ci_class
#'
#' Prints the number of observations in a ci_class object
#'
#' @details This function is a ci_class method and it prints the number of observations in a ci_class object. It is invisibly returns the ci_class object.
#'
#' @param x a ci_class object
#'
#' @return Returns the ci_class object
#'
#' @export
#'
#' @examples
#' x = c(0,1,2,3)
#' x = make_ci_class(x)
#' print(x)
#'

print.ci_class <- function(x){
  if(length(x$Data)>1 || length(x$Data) == 0){
    cat("a",class(x),"with",length(x$Data),"observations")
    invisible(x)
  } else {
    cat("a",class(x),"with 1 observation")
    invisible(x)
  }
}
