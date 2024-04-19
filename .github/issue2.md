---
title: Getting weird results for data frames
labels: bug
---
I'm trying to use the randomly sample rows from my data and I can't get anything working, when i try random sampling it doesn't seem to change my datas rows at all. So i tried stratified sampling and it gave me an error.
```r
> experiment <- read_excel("Desktop/trial_results.xlsx")
> stratified_sampling(experiment, c(4,12,9,7), c(0.5, 0.2, 0.1, 0.2))
Error in stratified_sampling(experiment, c(4, 12, 9, 7), c(0.5, 0.2, 0.1,  : 
  Strata lengths do not sum up to the length of data
```

I double chekced the data and my strata is set up right and sums to the number of rows so im not sure why i get this error. please help i need this for my work
