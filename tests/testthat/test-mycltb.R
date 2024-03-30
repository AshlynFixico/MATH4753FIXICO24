test_that("correct length", {
  v <- mycltb(1,2,0.1)
  expect_length(object = v, n=2)
})
