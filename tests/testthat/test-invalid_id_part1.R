test_that("question 2 part 1 - invalid id list correct", {
  expect_equal(invalid_id_part1(11,22), c(11,22))
  expect_equal(invalid_id_part1(1188511880,1188511890), c(1188511885))
  expect_equal(invalid_id_part1(1698522,1698528), c())
})
