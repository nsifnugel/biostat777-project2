
# ci_class constructor
make_ci_class <- function(x){
  structure(list(Data = x),
            class = "ci_class")
}

# print method
print.ci_class <- function(x){
  if(length(x$Data)>1 || length(x$Data) == 0){
    cat("a",class(x),"with",length(x$Data),"observations")
    invisible(x)
  } else {
    cat("a",class(x),"with 1 observation")
    invisible(x)
  }
}

# generic function for calculate_CI method
calculate_CI <- function(x,conf=0.95) UseMethod("calculate_CI")

# calculate_CI method
calculate_CI.ci_class <- function(x, conf = 0.95) {
  if(is.vector(x$Data) & is.numeric(x$Data)){
    alpha <- 1 - conf
    degrees_freedom <- length(x$Data) - 1
    t_score <- qt(p = alpha / 2, df = degrees_freedom, lower.tail = FALSE)
    lower_bound = sample_mean(x$Data) - t_score*(sample_sd(x$Data)/sqrt(length(x$Data)))
    upper_bound = sample_mean(x$Data) + t_score*(sample_sd(x$Data)/sqrt(length(x$Data)))
    calculate_CI = c(lower_bound,upper_bound)
    names(calculate_CI) <- c("lower_bound", "upper_bound")
    return(calculate_CI)
  } else{
    message("Error: Make sure your the ci_class data is a vector with numeric values.")
  }
}


