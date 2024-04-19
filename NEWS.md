# randomifyR 0.3.2 (2024-03-12)

* Small patch release to fix interaction between random sampling and the alignment of stars.

# randomifyR 0.3.1 (2024-02-21)

## Improvements

* Enhanced error messages in the `systematic_sampling` function to provide clearer feedback when invalid parameters are provided.

## Bug fixes

* Fixed a bug in the `systematic_sampling` function where incorrect samples were generated when the sampling interval was not a factor of the dataset length.

# randomifyR 0.3.0 (2024-02-18)

## New features

* Added support for systematic random sampling.
* Documentation improvements.

# randomifyR 0.2.1 (2024-01-26)

## Improvements

* Improved error handling in the `bootstrap_sampling` function to handle cases where the number of folds exceeds the length of the dataset.
* Added additional examples to the README file demonstrating the usage of each function with diverse datasets.

# randomifyR 0.2.0 (2024-01-21)

## New features

* Added support for bootstrap random sampling.
* A lovely hex sticker!

## Bug fixes

* Fixed a bug in the `stratified_sampling` function where incorrect samples were generated when the total sample size exceeded the size of the dataset.
* Updated unit tests for the `stratified_sampling` function to ensure accurate sampling behaviour.


# randomifyR 0.1.0 (2024-01-04)

## New features

* Initial release of the RandomSamplingR package.
* Added functions for simple and stratified random sampling.
* Documentation improvements

