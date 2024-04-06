test_that("correct length", {
  v <- myboot(iter=10000,x = c(0:20),fun="mean",alpha=0.5)
  expect_length(object = v, 3)
})
