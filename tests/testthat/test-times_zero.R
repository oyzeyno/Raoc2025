test_that("Question 1: times_zero function works", {
  input_path <- system.file("extdata",
                            "day1_input_20251201_example.txt",
                            package = "aoc2025")

  expect_equal(times_zero(read_input(input_path)), c(3,6))
})
