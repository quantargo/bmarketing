library(testthat)

testthat::test_that("test checkNA",{
  
  expect_equal( checkNA(matrix( c(1:9),3,3) ) , "No empty records found in the dataframe" ) 
  expect_equal( checkNA(matrix( c(1:8, NA),3,3) ) , "There are 1 rows having NAs")
  
})

a1 <- c(0,1,1,2)
a2 <- c("a", "b", "c", NA)
a3 <- c(1,2,3,NA)
b3 <- c(1,2,3,2)
ds_test <- data.frame(a1,a2,a3)
ds_result <- data.frame(a1,a2,b3)
ds_names <- c("a","b","c")
names(ds_test) <- ds_names 
names(ds_result) <- ds_names

testthat::test_that("test replace NAs",{
  
  expect_equal( cleanData(ds_test,ds_names,replaceNAs=TRUE), ds_result ) 
  
})

