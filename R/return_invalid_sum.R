#' The answers of Q2 for AoC 2025
#'
#' The function returns the answers of part 1 and 2 for given input file
#'
#' @param input_text input provided by read_input function
#'
#' @returns vector of answers 1 and 2 (sum of invalid IDs)
#' @export
return_invalid_sum <- function(input_text){
  range_list <- unlist(strsplit(input_text,','))
  id_sum <- 0
  id_sum_2 <- 0
  for (i in range_list){
    first_last <- aoc2025::extract_first_last_id(i)
    id_sum <- id_sum + sum(aoc2025::invalid_id_part1(first_last[1], first_last[2]))
    id_sum_2 <- id_sum_2 + sum(aoc2025::invalid_id_part2(first_last[1], first_last[2]))

  }
  return(c(id_sum, id_sum_2))
}
