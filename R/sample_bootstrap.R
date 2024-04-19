#' Generate bootstrapped random samples from a dataset
#'
#' This function generates bootstrapped random samples from a dataset
#' with a specified number of folds.
#'
#' @param data The dataset from which to sample.
#' @param folds The number of folds for bootstrapping.
#' @return A list of bootstrapped random samples.
#'
#' @examples
#' # Generate bootstrapped random samples with 5 folds
#' bootstrap_sampling(letters, folds = 5)
#'
#' @export
bootstrap_sampling <- function(data, folds) {
  # Initialize list to store bootstrapped samples
  bootstrapped_samples <- list()

  # Perform bootstrapping for each fold
  for (i in seq(folds)) {
    # Store bootstrapped sample in list
    bootstrapped_samples[[i]] <- random_sampling(data, size = NROW(data))
  }

  return(bootstrapped_samples)
}
