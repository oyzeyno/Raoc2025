#' Determine maximum joltage for Q3-Part 1 of AoC 2025
#'
#' @param number integer
#'
#' @returns integer maximum joltage
#' @export
find_joltage <- function(number){
  number_char_array <- unlist(strsplit(as.character(number),""))
  tt <- sort(number_char_array, decreasing = T)
  max_digit <- tt[1]
  max_index <- match(max_digit, as.numeric(number_char_array))
  # if max_index is at the end, find the second max
  if (max_index == length(number_char_array)){
    max_digit <- tt[2]
    max_index <- match(max_digit, as.numeric(number_char_array))
  }

  # search for max available digit after max_digit's position
  tt_2 <- number_char_array[(max_index + 1):length(number_char_array)]
  tt_2 <- sort(tt_2, decreasing = T)
  max_digit_2 <- tt_2[1]
  joltage <- as.numeric(paste0(max_digit,max_digit_2))
  return(joltage)
}
