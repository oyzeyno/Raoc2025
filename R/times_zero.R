#' The answers of Q1 for AoC 2025
#'
#' The function returns the answers of part 1 and 2 for given input file
#'
#' @param input_text input provided by read_input function
#'
#' @returns vector of answers 1 and 2
#' @export
times_zero <- function(input_text){

  # Dial starts from position 50, with a range 0-99
  new_pos <- 50

  # Counter for how many times the dial points to zero
  zero_counter <- 0

  # Counter for how many times rotation goes over zero
  rotate_zero_counter <- 0

  # Extract clicks
  n_clicks <- gsub("[LR]","", input_text)

  # follow instruction input

  for (i in input_text){
    n_clicks <- as.numeric(as.character(gsub('[LR]', '', i)))
    if (new_pos == 0 && n_clicks %% 100 == 0){
      rotate_zero_counter <- rotate_zero_counter - 1
    }
    if (grepl("R", i)){
      new_pos <- new_pos + n_clicks
      # Integer division - floor
      rotate_zero_counter <- rotate_zero_counter + (new_pos %/% 100)
      new_pos <- new_pos %% 100
    }

    if (grepl("L", i)){
      old_pos <- new_pos
      new_pos <- new_pos - n_clicks

      rotate_zero_counter <- rotate_zero_counter + ((new_pos %/% 100) * -1)

      # If starting position is 0, then floor division yields rotation + 1
      if (old_pos == 0 && n_clicks %% 100 != 0){
        rotate_zero_counter <- rotate_zero_counter - 1
      }
      new_pos <- new_pos %% 100

      # Increase rotation if we end up at 0
      if (new_pos == 0){
        rotate_zero_counter <- rotate_zero_counter + 1
      }
    }

    # Counter for part 1
    if (new_pos == 0){
      zero_counter <- zero_counter + 1
    }
  }
  return(c(zero_counter, rotate_zero_counter))
}
