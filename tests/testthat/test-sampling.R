# Test random_sampling function
test_that("random_sampling returns a sample of the correct size", {
  data <- 1:100
  sample <- random_sampling(data, size = 50)
  expect_equal(length(sample), 50)
})

# Test stratified_sampling function
test_that("stratified_sampling returns a sample of the correct size", {
  data <- 1:100
  strata <- c(30, 40, 30)
  sample <- stratified_sampling(data, strata, weights = c(.8,.1,.1), size = 50)
  expect_equal(length(sample), 50)
})

# Test systematic_sampling function
test_that("systematic_sampling returns a sample of the correct size", {
  data <- 1:100
  sample <- systematic_sampling(data, interval = 5)
  expect_true(length(sample) > 0)
})

# Test bootstrap_sampling function
test_that("bootstrap_sampling returns bootstrapped samples of the correct size", {
  data <- 1:100
  samples <- bootstrap_sampling(data, folds = 5)
  expect_equal(length(samples), 5)
  expect_true(all(sapply(samples, function(x) length(x) == length(data))))
})
