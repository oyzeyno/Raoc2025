test_that("extracting first and last id for id-range works", {
  expect_equal(extract_first_last_id("11-22"), c(11,22))
})
