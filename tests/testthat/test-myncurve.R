test_that("multiplication works", {
  v <- myncurve(1,2,3)
  expect_length(object = v, n=3)
})
