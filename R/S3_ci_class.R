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




