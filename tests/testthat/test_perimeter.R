library(elliptical)

context("Perimeter")

test_that("perimeter of a circle", {
  expect_equal(ellipse_perimeter(1), 2 * pi)
})
