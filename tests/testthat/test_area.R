library(shapes)

context("Area")

test_that("area of a circle", {
  expect_equal(area_ellipse(1), pi)
  expect_equal(area_ellipse(1, 0), pi)
})

test_that("area of a line", {
  expect_equal(area_ellipse(1, 1), 0)
})

test_that("area of an ellipse", {
  expect_equal(area_ellipse(1, 0.5), 2.7207)
})
