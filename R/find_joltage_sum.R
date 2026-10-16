#' The answers of Q3 for AoC 2025
#'
#' The function returns the answers of part 1 and 2 for given input file
#'
#' @param input_text input provided by read_input function
#'
#' @returns vector of answers 1 and 2 (joltage sum)
#' @export

find_joltage_sum <- function(input_text){
  joltage_sum <- 0
  joltage_12_sum <- 0

  for (i in input_text){
    joltage <- find_joltage(i)
    joltage_sum <- joltage_sum + joltage

    joltage_12 <- find_joltage_12(i)
    joltage_12_sum <- joltage_12_sum + joltage_12
  }

  return(c(joltage_sum, joltage_12_sum))
}
