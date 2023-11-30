#' Calculate Confidence Intervals
#'
#' Calculate the confidence interval around the mean of a vector
#'
#' @details This function is a ci_class S3 method. It calculates and returns the lower- and upperbounds of the confidence interval about the mean of a vector of ci_class. The vector and the desired confidence level are passed as arguments to the function. The default level of confidence is 0.95.
#'
#' @param x vector containing numeric values of ci_class
#' @param conf confidence level used to generate the confidence interval
#'
#' @return Returns lower- and upperbound of the confidence interval
#'
#' @import stats
#'
#' @export
#'
#' @examples
#' set.seed(1234)
#' x = sample(10:1000,20)
#' x = make_ci_class(x)
#' calculate_CI(x,conf=0.95)
#'
calculate_CI.ci_class <- function(x, conf = 0.95) {
  if(is.numeric(x$Data)){
    alpha <- 1 - conf
    degrees_freedom <- length(x$Data) - 1
    t_score <- qt(p = alpha / 2, df = degrees_freedom, lower.tail = FALSE)
    lower_bound = sample_mean(x$Data) - t_score * (sample_sd(x$Data) / sqrt(length(x$Data)))
    upper_bound = sample_mean(x$Data) + t_score * (sample_sd(x$Data) / sqrt(length(x$Data)))
    calculate_CI = c(lower_bound, upper_bound)
    names(calculate_CI) <- c("lower_bound", "upper_bound")
    return(calculate_CI)
  } else{
    message("Make sure the data attribute for your ci_class object is numeric.")
  }
}

