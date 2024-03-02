test_that("correct length", {
  v <- myncurve(1,2,3)
  expect_length(object = v, n=3)
})
