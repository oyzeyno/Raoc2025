test_that("question 2 part 2 - invalid id list correct", {
  expect_equal(invalid_id_part2(11,22), c(11,22))
  expect_equal(invalid_id_part2(998,1012), c(999,1010))
  expect_equal(invalid_id_part2(1698522,1698528), c())
})
