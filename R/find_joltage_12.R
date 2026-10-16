#' Determine maximum joltage for Q3-Part 2 of AoC 2025
#'
#' @param number integer
#'
#' @returns integer maximum joltage
#' @export
find_joltage_12 <- function(number){
  number_char_array <- unlist(strsplit(as.character(number),""))
  slice_size <- 12
  joltage <- c()

  # Find max digit for the specified slice size
  first_max_digit_index <- find_max_index(number, slice_size)

  joltage <- c(joltage, first_max_digit_index[1])
  tmp <- as.numeric(first_max_digit_index[2])
  for (j in seq(slice_size-1,1)){
    second_max_digit_index <- find_max_index(number_char_array[(tmp+1):length(number_char_array)], j)
    # Find real index based in number, it should be after previous max digit
    for (i in seq_along(number_char_array)){
      if (number_char_array[i] == second_max_digit_index[1] && i > tmp){
        max_index_second_real = i
        joltage<- c(joltage, second_max_digit_index[1])
        tmp <- max_index_second_real
        break
      }
    }
  }

  joltage_value <- as.numeric(paste0(joltage, collapse = ""))
  return(joltage_value)
}
