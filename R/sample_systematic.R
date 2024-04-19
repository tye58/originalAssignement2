#' Generate a systematic random sample from a dataset
#'
#' This function generates a systematic random sample from a dataset
#' with a specified sampling interval.
#'
#' @param data The dataset from which to sample.
#' @param interval The sampling interval.
#' @return A systematic random sample
#'
#' @examples
#' # Generate a systematic random sample with an interval of 5
#' sample <- systematic_sampling(letters, interval = 5)
#' print(sample)
#'
#' @export
systematic_sampling <- function(data, interval) {
  # Check if interval is within range
  if (interval <= 0 || interval > length(data)) {
    stop("Invalid sampling interval")}

  # Calculate the number of samples to select
  num_samples <- ceiling(length(data) / interval)

  # Generate the starting index for sampling
  start_index <- random_sampling(1:interval, 1)

  # Generate the systematic sample
  systematic_sample <- data[seq(start_index, length(data), by = interval)]

  return(systematic_sample)
}
