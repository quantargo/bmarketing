
<!-- README.md is generated from README.Rmd. Please edit that file -->

[![Travis Build
Status](https://travis-ci.org/Quantargo/bmarketing.svg?branch=master)](https://travis-ci.org/Quantargo/bmarketing)
[![Coverage
Status](https://img.shields.io/codecov/c/github/Quantargo/bmarketing/master.svg)](https://codecov.io/github/Quantargo/bmarketing?branch=master)

## Overview

This package is dedicated to classification analysis using decision
trees. Aside from decision tree model itself and prediction function it
has got all necessary supporting tools - data cleaning, transformation
function, plot of the results and calculation of accuracy of predictions
and confusion matrix.

## Functionalities

The functionalities are as follows.

  - Data Cleaning

<!-- end list -->

``` r
require("tree3")
#> Loading required package: tree3
#> 
#> Attaching package: 'tree3'
#> The following object is masked from 'package:base':
#> 
#>     transform

data("bmarketing")
cleanedData <- clean(data = bmarketing,target_name = "y")
```

  - Data
Transforming

<!-- end list -->

``` r
cleanedData$cons.price.id <- transform(cleanedData,column = "cons.price.idx")
```

  - Finding a Model

<!-- end list -->

``` r
treeModel <-  model(input_data = cleanedData,target_name="y")
#> Warning: package 'rpart.plot' was built under R version 3.5.3
```

![](man/figures/README-unnamed-chunk-4-1.png)<!-- -->

  - Getting the
predictions

<!-- end list -->

``` r
predictionData <-  predictions(dt_model = treeModel,bmarketing = cleanedData)
```

  - Assessing the model accuracy

<!-- end list -->

``` r
model_accuracy(real = cleanedData$y,pred = predictionData)
#> $accuracy
#> [1] 0.9271668
#> 
#> $confusion_matrix
#>      pred
#> real    no  yes
#>   no  3583   85
#>   yes  215  236
```
