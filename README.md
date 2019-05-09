
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bmarketing

<!-- badges: start -->

<!-- badges: end -->

The goal of bmarketing package is to create decision tree model and use
it to generate predictions based on provided dataset. It is also able to
clean the dataset before creating model or making predictions.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("nandakallugjeri/bmarketing")
```

## Functions

Funcion documentation is accessible through ?functionname. For example,
run ?checkNA to see the documentation for checkNA function.

checkNA

cleanData

dtree

dtreeplot

dtreesummary

dtreepredict

dtreeperf

translog

trans

standardize

logit

``` r
library(bmarketing)
#> Loading required package: tidyverse
#> Registered S3 methods overwritten by 'ggplot2':
#>   method         from 
#>   [.quosures     rlang
#>   c.quosures     rlang
#>   print.quosures rlang
#> Registered S3 method overwritten by 'rvest':
#>   method            from
#>   read_xml.response xml2
#> ── Attaching packages ─────────────────────────────────────────────────────────────────── tidyverse 1.2.1 ──
#> ✔ ggplot2 3.1.1       ✔ purrr   0.3.2  
#> ✔ tibble  2.1.1       ✔ dplyr   0.8.0.1
#> ✔ tidyr   0.8.3       ✔ stringr 1.4.0  
#> ✔ readr   1.3.1       ✔ forcats 0.4.0
#> ── Conflicts ────────────────────────────────────────────────────────────────────── tidyverse_conflicts() ──
#> ✖ dplyr::filter() masks stats::filter()
#> ✖ dplyr::lag()    masks stats::lag()
#> Loading required package: rpart.plot
#> Loading required package: rpart
mytree<-dtree(bmarketing,"y")
dtreeplot(mytree)
```

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" />
