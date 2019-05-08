context("clean_data")

file1 <- "bmarketing.csv"
file2 <- "bmarketing_with_nas.csv"

test_that("import and data cleansing works", {
  ## expected no of rows received
  expect_equal(nrow(clean_data(file1, target_var = "y")), 4119)
  ## check if error is thrown in the case of missing target_var
  expect_error(clean_data(file1, target_var = "unknown"))    
})

test_that("handling of NAs works", {
  ## check if warnings are thrown 
  expect_warning(clean_data(file2, target_var = "y"), regexp = "will be excluded$")  
  ## check if columns are excluded
  expect_equal(ncol(clean_data(file2, target_var = "y"))  , 18)
})