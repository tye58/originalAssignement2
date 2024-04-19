---
title: error when joining systematic samples
labels: bug
---
I need to take several systematic samples, each of the same size, from my data frame and join them together to form a new data frame. To identify which one is which, I have a new column `id` taking value 1 for the first sample, 2 for the second sample, etc. I join them together like this:


```r
experiment <- read_excel("Desktop/trial_results.xlsx")

# systematic sample my data, 10 replicates of size 5
samples <- NULL
for(i in 1:10) {
  samples <- rbind(samples,
                      experiment[systematic_sampling(1:32, interval = 6),] |>
                        dplyr::mutate(id = rep(i, 5))
  )
}
```

But that gives me an error saying I need to use 6 rows. But if I change the last line to `rep(i,6)` it tells me I need to use 5 rows.
```
Error in `dplyr::mutate()`:
ℹ In argument: `id = rep(i, 5)`.
Caused by error:
! `id` must be size 6 or 1, not 5.
```
