#' Generate a simple random sample from a dataset
#'
#' This function generates a simple random sample of a specified size from a dataset.
#' Each element in the dataset has an equal probability of being chosen.
#'
#' @param data The dataset from which to sample.
#' @param size The desired size of the random sample.
#' @return A simple random sample of the specified size.
#'
#' @examples
#' # Generate a simple random sample of size 100
#' sample <- random_sampling(letters, size = 100)
#' print(sample)
#' @export
random_sampling <- function(data, size) {
  # Generate random indices
  sample_indices <- sample.int(length(data), size, replace = TRUE)

  # Extract sample based on random indices
  sample_data <- data[sample_indices]

  return(sample_data)
}
