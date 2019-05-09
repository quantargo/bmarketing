context("Data Transformation")

test_that("imputation works as expected", {
  expect_equal(sum(is.na(test_data$BALANCE)), 9)
  expect_equal(sum(is.na(transform_data(test_data, cols_impute = "BALANCE")$BALANCE)), 0)
  expect_equal(mean(transform_data(test_data, cols_impute = "BALANCE")$BALANCE), mean(test_data$BALANCE, na.rm = TRUE))
})

test_that("log transform works as expected", {
  ## Value calculated once manual
  expect_equal(mean(transform_data(test_data, cols_impute = "AGE", cols_log = "AGE")$AGE), 3.81205)
})

test_that("normalization works as expected", {
  ## Value calculated once manual
  expect_equal(mean(transform_data(test_data, cols_impute = "AGE", cols_normalize = "AGE")$AGE), 0)
})