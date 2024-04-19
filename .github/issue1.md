---
title: Can't install the package
labels: bug
---
Currently working on an AWS EC2 instance is on Ubuntu 18.04.5 LTS (GNU/Linux 5.3.0-1032-aws x86_64). It came with R version 4.0.2 installed. I am unable to install randomifyR.

When I try to install it locally I get

```
During startup - Warning messages:
1: Setting LC_CTYPE failed, using "C"
2: Setting LC_TIME failed, using "C"
3: Setting LC_MESSAGES failed, using "C"
4: Setting LC_MONETARY failed, using "C"
5: Setting LC_PAPER failed, using "C"
6: Setting LC_MEASUREMENT failed, using "C"
* installing to library '/home/rstudio/R/x86_64-pc-linux-gnu-library/4.1'
* installing *source* package 'randomifyR' ...
** using staged installation
** R
Error in parse(outFile) :
  /home/rstudio/randomifyR/R/sample_systematic.R:33:0: unexpected end of input
31:   return(systematic_sample)
32: }
   ^
ERROR: unable to collate and parse R files for package 'randomifyR'
* removing '/home/rstudio/R/x86_64-pc-linux-gnu-library/4.1/randomifyR'
* restoring previous '/home/rstudio/R/x86_64-pc-linux-gnu-library/4.1/randomifyR'
```

I am not sure whether this error is due to my R version being 4.0.2. Please let me know if there is a way to fix this.

```
> sessionInfo()
R version 4.0.2 (2020-06-22)
Platform: x86_64-pc-linux-gnu (64-bit)
Running under: Ubuntu 18.04.5 LTS

Matrix products: default
BLAS:   /usr/lib/x86_64-linux-gnu/openblas/libblas.so.3
LAPACK: /usr/lib/x86_64-linux-gnu/libopenblasp-r0.2.20.so

locale:
 [1] LC_CTYPE=C.UTF-8       LC_NUMERIC=C           LC_TIME=C.UTF-8        LC_COLLATE=C.UTF-8
 [5] LC_MONETARY=C.UTF-8    LC_MESSAGES=C.UTF-8    LC_PAPER=C.UTF-8       LC_NAME=C
 [9] LC_ADDRESS=C           LC_TELEPHONE=C         LC_MEASUREMENT=C.UTF-8 LC_IDENTIFICATION=C

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base

loaded via a namespace (and not attached):
[1] compiler_4.0.2 tools_4.0.2
```
