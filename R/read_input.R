#' Generic function to read input file provided by AoC 2025
#'
#' @param input_text_path input file path
#'
#' @returns input vector
#' @export
read_input <- function(input_text_path){
  my_input <- readLines(input_text_path)
  return(my_input)
}
