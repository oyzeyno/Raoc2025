#' Identify invalid IDs for Q2-Part 1 of AoC
#'
#' @param first_id integer
#' @param last_id integer
#'
#' @returns vector of invalid IDs
#' @export
invalid_id_part1 <- function(first_id, last_id){
  invalid_id_list <- c()
  for (i in seq(first_id, last_id)){
    str_id <- as.character(i)
    length_str <- nchar(str_id)

    if (length_str %% 2 == 0){
      half_length <- floor(length_str / 2)
      tt <- unlist(strsplit(str_id, split = ""))
      first_half <- tt[1:half_length]
      second_half <- tt[(half_length+1):length_str]
      if (identical(first_half, second_half)){
        invalid_id_list <- c(unlist(invalid_id_list), i)
      }
    }
  }
  return(invalid_id_list)

}
