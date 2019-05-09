
<!-- README.md is generated from README.Rmd. Please edit that file -->

[![Travis Build
Status](https://travis-ci.org/Quantargo/bmarketing.svg?branch=master)](https://travis-ci.org/Quantargo/bmarketing)
[![Coverage
Status](https://img.shields.io/codecov/c/github/Quantargo/bmarketing/master.svg)](https://codecov.io/github/Quantargo/bmarketing?branch=master)


## Overview

The package Team1 used for data cleaning, data transforming, model, model plotting, model predicting and model performance.

##Instalation

# The easiest way to get Team1 is to install it from Github:
devtools::install_github('WonderAnn/bmarketing')

##Package contain function

clear1 (dataset) - function that identifies missing values 

clear2 (dataset,column) - function that identifies missing values in a specific column

clear3 (dataset, column) - function that identifies column with missing values over 50% and delete it

histplot(dataset, column) - function that plots histogrm on numeric columns

treeplot(model) - function that plots desicion tree

logaritmic(dataset$column) - function that calculate logarythm from numeric column

intonum(dataset$column) - function that transform factors into numeric

model(dataset, target) - function that generates desicion tree taking all variables

model_performance(target, prediction_vector) - calaculate accuracy and confusion matrix

model_pred(dataset, model) - generate the prediction vector




<!-- TODO: Change README to make it more descriptive, add examples, etc. -->
