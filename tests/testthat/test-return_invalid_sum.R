test_that("Question 2 answers: Returning invalid sums for parts 1-2 works", {
  input_path <- system.file("extdata",
                            "day2_input_20251202_example.txt",
                            package = "aoc2025")

  expect_equal(return_invalid_sum(read_input(input_path)), c(1227775554,4174379265))
})
