# Function to permute the rows of a dataset
permute <- function(data) {
  if(!is.null(dim(data))) {
    return(data[sample(nrow(data)), ])
  } else {
    return(data[sample(length(data))])
  }
}
