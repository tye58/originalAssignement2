#' Two-stage cluster sampling
#'
#' This function does random sampling within clusters. That is, it first selects
#' clusters at random (without replacement), and then samples from within those
#' clusters (with replacement).
#' @param data The dataset from which to sample.
#' @param clusters A vector specifying the size of the clusters in the dataset.
#' That is, the number of rows corresponding to each cluster. It is assumed the
#' dataset is ordered by cluster.
#' @param nclusters The desired number of clusters to include in the sample.
#' @param within_cluster The desired number of elements to sample from within each cluster.
#' @return A random sample of the data
#' @examples
#' # Generate a sample of 5 observations from each of 2 of the 3 clusters
#' cluster_sampling(letters, clusters = c(7, 6, 13), nclusters = 2,
#'   within_cluster = 5)
#' @export
cluster_sampling <- function(data, clusters, nclusters, within_cluster) {
  # Check if clusters are valid
  if (sum(clusters) != length(data)) {
    stop("Invalid cluster specification")
  }

  # Choose clusters at random
  cluster_samples <- random_sampling(seq_along(clusters), size = nclusters)
  cluster_index <- rep(clusters, clusters)

  my_sample <- NULL
  for(i in cluster_samples) {
    my_sample <- c(my_sample,
      random_sampling(data[cluster_index == clusters[i]], size = within_cluster)
    )
  }
  return(my_sample)
}
