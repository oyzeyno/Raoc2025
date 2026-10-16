#' Identify invalid IDs for Q2-Part 2 of AoC
#'
#' @param first_id integer
#' @param last_id integer
#'
#' @returns vector of invalid IDs
#' @export
invalid_id_part2 <- function(first_id, last_id){
  invalid_id_list <- c()
  for (i in seq(first_id, last_id)){
    str_id <-  as.character(i)
    length_str <- nchar(str_id)
    half_length <- floor(length_str / 2)
    tt <- unlist(strsplit(str_id, split = ""))
    for (j in seq(1, half_length)){
      pattern <- tt[1:j]
      how_many <- floor(length_str / j)
      if (str_id == paste(replicate(how_many, pattern), collapse = "")){
        invalid_id_list <- c(invalid_id_list,i)
      }
    }
  }

  mylist <- unique(invalid_id_list)
  return(mylist)
}
