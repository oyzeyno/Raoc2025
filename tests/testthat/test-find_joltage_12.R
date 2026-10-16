test_that("Question 3 part 2: find joltage12 works", {
  expect_equal(find_joltage_12(987654321111111), 987654321111)
  expect_equal(find_joltage_12(811111111111119), 811111111119)
})
