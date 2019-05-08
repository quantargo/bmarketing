context("clean_data")

test_that("import and data cleansing works", {
  ## expected no of rows received
  expect_equal(nrow(clean_data("data/bmarketing.csv", target_var = "y")), 4120)
  ## check if error is thrown in the case of missing target_var
  expect_error(clean_data("data/bmarketing.csv", target_var = "unknown"))    
  ## check if warnings are thrown and columns are excluded
  expect_warning(clean_data("data/bmarketing_with_nas.csv", target_var = "y"))  
  expect_equal(ncol(clean_data("data/bmarketing_with_nas.csv", target_var = "y"))  , 5)
}
)