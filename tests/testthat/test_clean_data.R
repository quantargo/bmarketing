context("import and clean")

test_that("import works", {
  expect_equal(nrow(test_data), 99)
})

test_that("cleaning works", {
  ## Check if NA data in target column throws an error
  expect_error(clean_data(test_data, target_var = "AGE"), regexp = "Target Var should not include any NAs")
  expect_warning(clean_data(test_data, "Y"), regexp = "too many NAs and will be excluded")
})