test_that("correct length", {
  v<- mymlnorm(x=c(10,12,13,15,12,11,10),mu=seq(7,18,length=1000),sig=seq(0.1,4,length=1000),lwd=2,labcex=1)
  expect_length(v,5)
})
