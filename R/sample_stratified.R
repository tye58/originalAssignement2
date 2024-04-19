#' Generate a stratified random sample from a dataset
#'
#' This function generates a stratified random sample of a specified size from a dataset,
#' where the strata sizes and weights are provided as input.
#'
#' @param data The dataset from which to sample.
#' @param strata A vector specifying the sizes of the strata within the dataset.
#' That is, the number of rows corresponding to each stratum. It is assumed the
#' dataset is ordered by strata.
#' @param weights A vector specifying the weights of the strata for sampling.
#' @param size The desired size of the stratified random sample.
#' @return A stratified random sample of the specified size.
#'
#' @examples
#' # Generate a stratified random sample of size 100 with given strata sizes
#' strata <- c(5, 9, 12)
#' weights <- c(0.5, 0.3, 0.2)
#' sample <- stratified_sampling(letters, strata, weights, size = 100)
#' table(sample)
#'
#' @export
stratified_sampling <- function(data, strata, weights, size) {
  # Check if strata sum up to the length of data
  if (sum(strata) != length(data)) {
    stop("Strata lengths do not sum up to the length of data")
  }
  # Check if weights sum up to 1
  if (sum(weights) != 1) {
    stop("Weights do not sum up to 1")


  # Initialize sample data
  sample_data <- NULL
  stratum_breaks <- c(0,cumsum(strata))

  # Loop through each stratum
  for (i in 1:length(strata)) {
    # Calculate sample size for current stratum
    stratum_size <- round(size * weights[i])

    # Generate random indices for current stratum
    idx <- (stratum_breaks[i]+1):(stratum_breaks[i+1])
    stratum_indices <- random_sampling(seq_along(data)[idx], stratum_size)

    # Add sampled data from current stratum to sample_data
    sample_data <- c(sample_data, data[stratum_indices])
  }

  # Permute the results so they are not ordered by strata
  return(permute(sample_data))
}
