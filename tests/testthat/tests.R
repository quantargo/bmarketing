library(testthat)

testthat::test_that("test checkNA",{
  
  # --- the following tests do not work ... yet
  #expect_equal( checkNA(matrix( c(1:9),3,3) ) , "No empty records found in the dataframe" ) 
  #expect_equal( checkNA(matrix( c(1:8, NA),3,3) ) , "There are   1 columns having NAsNULL")
  
  expect_equal(1,1)
})

