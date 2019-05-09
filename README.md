
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bmarketing

<!-- badges: start -->

<!-- badges: end -->

The goal of bmarketing is to provide functions useful for data
cleansing, modelling and reporting tasks.

## Installation

You can install the released version of bmarketing from
[Github](https://github.com/BalintKomjati/bmarketing)
    with:

    #> Skipping install of 'bmarketing' from a github remote, the SHA1 (b1a80ee1) has not changed since last install.
    #>   Use `force = TRUE` to force installation

## Example

This is a basic workflow for package usage is the following:

1)  Import the package

<!-- end list -->

``` r
library(bmarketing)
```

2)  Import the data you want to analyse. Like

<!-- end list -->

``` r
bmarketing <- read.csv2("inst/bmarketing.csv",dec = ".")
```

3)  Do some data cleansing with function clean()

<!-- end list -->

``` r
bmarketing <- clean(x = bmarketing, t = "y")
```

4)  Fit a Decision Tree, plot the results, give
predictions:

<!-- end list -->

``` r
dt_model <- fitModel(data = bmarketing, y = 'y', modelType = 'DecisionTree')
rpart.plot(dt_model)
#> Warning: Cannot retrieve the data used to build the model (so cannot determine roundint and is.binary for the variables).
#> To silence this warning:
#>     Call rpart.plot with roundint=FALSE,
#>     or rebuild the rpart model with model=TRUE.
```

<img src="man/figures/README-unnamed-chunk-6-1.png" width="100%" />

``` r

predictions <- predict(dt_model, bmarketing, type = "class")
```

5)  Finally, you can create a report for model performance:

<!-- end list -->

``` r
results <- calcPerformance(y = bmarketing$y, y_pred = predictions)
#> [1] "Confusion matrix"
#>      y_pred
#> y       no  yes
#>   no  3583   85
#>   yes  215  236
#> [1] ""
#> [1] "True Positive Rate (Sensitivity): 52.328 %"
#> [1] "True Negative Rate (Specificity): 97.683 %"
#> [1] "Precision: 73.52 %"
#> [1] "Accuracy: 92.717 %"
```
