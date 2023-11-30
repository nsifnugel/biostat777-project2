#' Generic Function for calculate_CI
#'
#' Generic Function for calculate_CI for ci_class objects
#'
#' @details This function is the generic function for the calculate_CI S3 ci_class method defined in this package. Calculate_CI calculates and returns the lower- and upperbounds of the confidence interval about the mean of a vector of ci_class. The vector and the desired confidence level are passed as arguments to the function. The default level of confidence is 0.95.
#'
#' @param x vector containing numeric values of ci_class
#' @param conf confidence level used to generate the confidence interval
#'
#' @return
#'
#' @export
#'
#' @examples
#'

calculate_CI <- function(x, conf=0.95) UseMethod("calculate_CI")
