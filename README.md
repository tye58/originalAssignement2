[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/8o27f6Jm)

<!-- README.md is generated from README.Rmd. Please edit that file -->

# randomifyR <img src="man/figures/logo.svg" align="right" height="139" alt="" />

<!-- badges: start -->
<!-- badges: end -->

randomifyR is an R package designed to facilitate efficient and unbiased
random sampling of data from diverse datasets. Leveraging advanced
random sampling algorithms, this package enables users to extract
representative subsets of data for analysis, modeling, and validation
purposes. With randomifyR, researchers, analysts, and data scientists
can easily implement various sampling techniques, including simple
random sampling, stratified sampling, and systematic sampling, among
others. This package provides flexible options for specifying sampling
sizes, stratification criteria, and sampling methodologies, allowing
users to tailor the sampling process to suit their specific needs and
objectives. Whether performing exploratory data analysis, conducting
hypothesis testing, or building predictive models, randomifyR simplifies
the data sampling process, enhances reproducibility, and ensures the
integrity of statistical inferences.

Key Features:

- Implement various random sampling techniques, including simple random
  sampling, stratified sampling, systematic sampling, and two-stage
  cluster sampling.
- Flexible options for specifying sample sizes, stratification criteria,
  and sampling methodologies.
- Supports sampling from diverse data structures, including vectors,
  data frames, and matrices.
- Enables efficient sampling of large datasets through optimized
  algorithms.
- Integration with other R packages for seamless data analysis
  workflows.
- Comprehensive documentation and examples to facilitate usage and
  implementation.

## Examples

The package offers a versatile set of sampling methods tailored to
different data sampling needs. Simple random sampling, a fundamental
technique, selects data points from a dataset without any predetermined
pattern, ensuring each element has an equal chance of being chosen.
Stratified sampling partitions the dataset into distinct strata based on
predefined characteristics and then samples from each stratum
proportionally to a specified weight, enhancing representativeness for
diverse subgroups within the data. Systematic sampling involves
selecting data points at regular intervals from an ordered list,
providing a structured yet unbiased approach for large datasets.
Two-stage cluster sampling first selects clusters at random and then
involves simple random sampling within clusters. This is useful when the
data is organized into groups or clusters, allowing for efficient
sampling of large datasets. Finally, the package also provides
bootstrapped sampling, a resampling technique that generates multiple
random samples with replacement, facilitating the estimation of
statistical properties and uncertainty assessment. These sampling
methods empower users to efficiently extract meaningful insights from
datasets, enabling robust analysis, modeling, and inference in various
fields of research and data analysis

Suppose our data is simply the letters of the alphabet

``` r
library(randomifyR)
data <- letters
```

A simple random sample of a specified size from a dataset can be
generated with `random_sampling()`.

``` r
sample <- random_sampling(data, size = 100)
print(sample)
#>   [1] "v" "r" "n" "y" "k" "m" "z" "e" "g" "u" "d" "j" "v" "m" "z" "a" "f" "t"
#>  [19] "b" "f" "o" "b" "u" "i" "v" "u" "q" "m" "l" "f" "k" "e" "w" "f" "v" "b"
#>  [37] "g" "e" "w" "r" "s" "q" "r" "r" "l" "u" "e" "j" "t" "g" "s" "t" "e" "z"
#>  [55] "l" "a" "o" "d" "q" "a" "h" "f" "g" "v" "y" "q" "g" "y" "n" "z" "o" "q"
#>  [73] "h" "y" "r" "b" "e" "w" "x" "k" "w" "b" "t" "d" "g" "f" "n" "n" "i" "q"
#>  [91] "n" "g" "t" "z" "u" "b" "c" "k" "o" "y"
```

`stratified_sampling()` generates a stratified random sample of a
specified size from a dataset with given strata.

``` r
strata <- c(10, 12, 4) # Example strata sizes
sample <- stratified_sampling(data, strata, size = 10)
#> Error in stratified_sampling(data, strata, size = 10): argument "weights" is missing, with no default
print(sample)
#>   [1] "v" "r" "n" "y" "k" "m" "z" "e" "g" "u" "d" "j" "v" "m" "z" "a" "f" "t"
#>  [19] "b" "f" "o" "b" "u" "i" "v" "u" "q" "m" "l" "f" "k" "e" "w" "f" "v" "b"
#>  [37] "g" "e" "w" "r" "s" "q" "r" "r" "l" "u" "e" "j" "t" "g" "s" "t" "e" "z"
#>  [55] "l" "a" "o" "d" "q" "a" "h" "f" "g" "v" "y" "q" "g" "y" "n" "z" "o" "q"
#>  [73] "h" "y" "r" "b" "e" "w" "x" "k" "w" "b" "t" "d" "g" "f" "n" "n" "i" "q"
#>  [91] "n" "g" "t" "z" "u" "b" "c" "k" "o" "y"
```

A systematic random sample from a dataset with a specified sampling
interval can be produced with `systematic_sampling()`.

``` r
sample <- systematic_sampling(data, interval = 5)
print(sample)
#> [1] "d" "i" "n" "s" "x"
```

Two-stage cluster samples can be generated using `cluster_sampling()`.
The clusters need to be specified, along with the number of clusters to
sample, and the number of observations to sample within each cluster.

``` r
sample <- cluster_sampling(data, clusters = c(7, 6, 13),
                           nclusters = 2, within_cluster = 5)
print(sample)
#>  [1] "w" "q" "p" "q" "q" "k" "m" "j" "j" "k"
```

Finally, bootstrapped random samples of a specified size from a dataset
with a specified number of folds can be obtained using
`bootstrap_sampling()`.

``` r
samples <- bootstrap_sampling(data, folds = 5)
print(samples)
#> [[1]]
#>  [1] "u" "p" "n" "e" "s" "r" "g" "o" "h" "q" "y" "k" "a" "l" "z" "i" "d" "m" "c"
#> [20] "b" "f" "j" "v" "x" "w" "t"
#> 
#> [[2]]
#>  [1] "x" "q" "v" "n" "a" "z" "h" "g" "u" "o" "t" "r" "w" "k" "p" "b" "f" "i" "c"
#> [20] "j" "s" "e" "l" "y" "m" "d"
#> 
#> [[3]]
#>  [1] "m" "c" "s" "r" "l" "i" "o" "f" "u" "n" "h" "a" "y" "q" "w" "v" "g" "j" "e"
#> [20] "x" "k" "t" "b" "z" "d" "p"
#> 
#> [[4]]
#>  [1] "m" "j" "h" "s" "w" "d" "n" "t" "c" "f" "r" "l" "x" "y" "u" "p" "i" "v" "g"
#> [20] "q" "a" "b" "e" "z" "k" "o"
#> 
#> [[5]]
#>  [1] "i" "y" "u" "e" "d" "w" "h" "k" "q" "r" "c" "a" "z" "x" "j" "p" "f" "v" "o"
#> [20] "t" "b" "l" "g" "m" "n" "s"
```
