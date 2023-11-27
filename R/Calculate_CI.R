#' Calculate Confidence Intervals
#'
#' Calculate the confidence interval around the mean of a vector
#'
#' @details This function calculates and returns the lower- and upperbounds of the confidence interval about the mean of a vector. The vector and the desired confidence level are passed as arguments to the function. The default level of confidence is 0.95.
#'
#' @param x vector containing numeric values
#' @param conf confidence level used to generate the confidence interval
#'
#' @return Returns lower- and upperbound of the confidence interval
#'
#' @import stats
#' @export
#'
#' @examples
#' set.seed(1234)
#' x = sample(10:1000,20)
#' calculate_CI(x,conf=0.95)
#'

calculate_CI <- function(x, conf = 0.95) {
  if(is.vector(x) & is.numeric(x)){
    alpha <- 1 - conf
    degrees_freedom <- length(x) - 1
    t_score <- qt(p = alpha / 2, df = degrees_freedom, lower.tail = FALSE)
    lower_bound = sample_mean(x) - t_score*(sample_sd(x)/sqrt(length(x)))
    upper_bound = sample_mean(x) + t_score*(sample_sd(x)/sqrt(length(x)))
    calculate_CI = c(lower_bound,upper_bound)
    names(calculate_CI) <- c("lower_bound", "upper_bound")
    return(calculate_CI)
  } else{
    message("Your input was either not a vector or it contained non-numeric values.")
  }
}
