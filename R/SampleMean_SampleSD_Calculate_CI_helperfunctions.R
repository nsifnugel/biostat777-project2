
# calculates mean of a vector with numeric values
sample_mean <- function(x) {
  if(is.numeric(x)){
    x <- subset(x,!is.na(x))
    sample_mean <- sum(x)/length(x)
  return(sample_mean)
  } else{
    message("Your input contained non-numeric values.")
  }
}

# calculates standard deviation of a vector with numeric values
sample_sd <- function(x) {
  if(is.numeric(x)){
    x <- subset(x,!is.na(x))
    mean_dif = (x-sample_mean(x))^2
    sample_sd = sqrt(sum(mean_dif)/(length(x)-1))
  return(sample_sd)
  }else{
    message("Your input contained non-numeric values.")
  }
}
