test_that("correct length", {
  v <- ntickets(N = 200, gamma = 0.02, p=0.95)
  expect_length(object = v, 5)
})
