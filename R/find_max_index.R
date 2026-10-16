#' Finding max index for a specified chunk size, for Q3-Part 2 of AoC
#'
#' @param sliced_number integer
#' @param chunk_size integer
#'
#' @returns vector for maximum digit and its index in sliced number
#' @export
find_max_index <- function(sliced_number, chunk_size){
  find_max_flag <- FALSE
  counter <- 1
  sliced_number_char_array <- unlist(strsplit(as.character(sliced_number), ""))
  tt <- sort(sliced_number_char_array, decreasing = T)
  max_digit <- tt[1]
  max_index <- match(max_digit, as.numeric(sliced_number_char_array))

  # find max digit with at least (chunk_size - 1) characters after
  while (isFALSE(find_max_flag)){
    if (max_index + chunk_size <= length(sliced_number_char_array)+1){
      find_max_flag <- TRUE
    }
    else{
      counter <- counter + 1
      max_digit <- tt[counter]
      max_index <- match(max_digit, as.numeric(sliced_number_char_array))
    }
  }
  return(c(max_digit, max_index))
}
