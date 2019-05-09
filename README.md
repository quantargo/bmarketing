
<!-- README.md is generated from README.Rmd. Please edit that file -->

## Overview

This package offers a series of functions that will clean, transform and
build a decision tree model for your input dataset. The functions are
split in different R scripts inside the R folder and should be executed
as explained below.

## Function Description

clean\_data : This function will check if the target variable contains
missing values and returns an error. It also gives warnings if other
variables contain NAs and removes those columns that have more than 50%
NAs.

transform\_data : Data transformation step transforms the numeric
variables using log and transforms factors into numeric variables (and
vice versa).

model\_data : This function builds a decision tree for the provided
dataset.

model\_plot : Plots the decision tree created in the precious step.

model\_predict: Returns the predicted classes from the decision tree.

model\_performance : This functions calculated the accuracy of the
model.
