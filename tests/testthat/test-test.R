context("test-test")

test_that("select2 works with integer", {
  expect_equal(select2(iris, 1:3), dplyr::select_at(iris, 1:3))
  expect_equal(select2(iris, 0), dplyr::select_at(iris, 0))
})


test_that("filter2 works with integer", {
  for (ind in list(1:3, 1)) {
    expect_equal(filter2(iris, ind), dplyr::slice(iris, ind))
  }
})

test_that("filter2 works with TRUEFALSE", {
  for (ind in list(1:3, 5:10, c(1, 1, 1, 1))) {
    expect_equal(filter2(iris, ind), dplyr::slice(iris, ind),
                 check.attributes = FALSE)
  }
})
