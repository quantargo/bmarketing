context("import and clean")

filename <- "testdata.csv"
data <- import_data_from_csv(filename)
data[is.na(data$Y), "Y"] <- "no"

test_that("import works", {
  expect_equal(nrow(data), 99)
})

test_that("cleaning works", {
  ## Check if NA data in target column throws an error
  expect_error(clean_data(data, target_var = "AGE"), regexp = "Target Var should not include any NAs")
  expect_warning(clean_data(data, "Y"), regexp = "too many NAs and will be excluded")
})