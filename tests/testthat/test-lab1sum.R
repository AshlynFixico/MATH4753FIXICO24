test_that("summary works", {
  v <- lab1sum(1:20)
expect_length(object = v, n = 6)
  expect_equal(2 * 2, 4)
})
